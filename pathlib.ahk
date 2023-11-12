global __file__ := A_ScriptFullPath

class Path
{
    __New(pathFile)
    {
        this.path := pathFile
        this.cwd := A_WorkingDir
    }
    parent()
    {
        SplitPath(this.path, , &parentPath)
        return parentPath
    }
    parts()
    {
        if InStr(this.path, "//")
        {
            delim := "//"
        }
        else if InStr(this.path, "/")
        {
            delim := "/"
        }
        else if InStr(this.path, "\\")
        {
            delim := "\\"
        }
        else if InStr(this.path, "\")
        {
            delim := "\"
        }
        return StrSplit(this.path, delim)
    }
    name()
    {
        SplitPath(this.path, &name)
        return name
    }
    ext()
    {
        SplitPath(this.path, , , &ext)
        return ext
    }
    exists()
    {
        if FileExist(this.path) or DirExist(this.path)
        {
            return true
        }
        else
        {
            return false
        }
    }
    empty()
    {
        if FileExist(this.path)
        {
            temp := A_Temp . "\" . this.name()
            FileOpen(temp, "a").Write("")
            FileMove(temp, this.path, 1)
        }
    }
    remove()
    {
        temp := A_Temp . "\" . this.name()
        if FileExist(this.path)
        {
            FileMove(this.path, temp, 1)
            FileDelete(temp)
        }
        else if DirExist(this.path)
        {
            DirMove(this.path, temp, 1)
            DirDelete(temp)
        }
    }
    read()
    {
        return FileOpen(this.path, "r").Read()
    }
    write(str)
    {
        return FileOpen(this.path, "w").Write(str)
    }
}
