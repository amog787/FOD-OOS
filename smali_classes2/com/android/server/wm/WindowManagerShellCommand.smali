.class public Lcom/android/server/wm/WindowManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "WindowManagerShellCommand.java"


# instance fields
.field private final mInterface:Landroid/view/IWindowManager;

.field private final mInternal:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 48
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    .line 50
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 51
    return-void
.end method

.method private getDisplayId(Ljava/lang/String;)I
    .locals 6
    .param p1, "opt"    # Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "displayId":I
    const-string v1, "-d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "option":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 101
    :goto_1
    goto :goto_2

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 97
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: bad number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 103
    :cond_1
    :goto_2
    return v0
.end method

.method private parseDimension(Ljava/lang/String;I)I
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 291
    const-string v0, "px"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 294
    :cond_0
    const-string v0, "dp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v0, p2}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .local v0, "density":I
    goto :goto_0

    .line 298
    .end local v0    # "density":I
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    const/16 v0, 0xa0

    .line 301
    .local v0, "density":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    div-int/lit16 v1, v1, 0xa0

    return v1

    .line 304
    .end local v0    # "density":I
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private printFoldedArea(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 213
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getFoldedArea()Landroid/graphics/Rect;

    move-result-object v0

    .line 214
    .local v0, "foldedArea":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const-string v1, "Folded area: none"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folded area: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    :goto_0
    return-void
.end method

.method private printInitialDisplayDensity(Ljava/io/PrintWriter;I)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "displayId"    # I

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v0, p2}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v0

    .line 164
    .local v0, "initialDensity":I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v1, p2}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I

    move-result v1

    .line 165
    .local v1, "baseDensity":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Physical density: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    if-eq v0, v1, :cond_0

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Override density: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v0    # "initialDensity":I
    .end local v1    # "baseDensity":I
    :cond_0
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private printInitialDisplaySize(Ljava/io/PrintWriter;I)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "displayId"    # I

    .line 107
    const-string v0, "x"

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 108
    .local v1, "initialSize":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 111
    .local v2, "baseSize":Landroid/graphics/Point;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v3, p2, v1}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 112
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v3, p2, v2}, Landroid/view/IWindowManager;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Physical size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Override size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private runDismissKeyguard(Ljava/io/PrintWriter;)I
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Landroid/view/IWindowManager;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method private runDisplayDensity(Ljava/io/PrintWriter;)I
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "densityStr":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result v1

    .line 181
    .local v1, "displayId":I
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 182
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplayDensity(Ljava/io/PrintWriter;I)V

    .line 183
    return v2

    .line 184
    :cond_0
    const-string v3, "-d"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplayDensity(Ljava/io/PrintWriter;I)V

    .line 186
    return v2

    .line 187
    :cond_1
    const-string v3, "reset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    const/4 v3, -0x1

    .local v3, "density":I
    goto :goto_0

    .line 191
    .end local v3    # "density":I
    :cond_2
    const/4 v3, -0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .local v4, "density":I
    nop

    .line 196
    const/16 v5, 0x48

    if-ge v4, v5, :cond_3

    .line 197
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v5, "Error: density must be >= 72"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    return v3

    .line 196
    :cond_3
    move v3, v4

    .line 202
    .end local v4    # "density":I
    .restart local v3    # "density":I
    :goto_0
    const/4 v4, -0x2

    if-lez v3, :cond_4

    .line 203
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v5, v1, v3, v4}, Landroid/view/IWindowManager;->setForcedDisplayDensityForUser(III)V

    goto :goto_1

    .line 206
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v5, v1, v4}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V

    .line 209
    :goto_1
    return v2

    .line 192
    .end local v3    # "density":I
    :catch_0
    move-exception v2

    .line 193
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: bad number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    return v3
.end method

.method private runDisplayFoldedArea(Ljava/io/PrintWriter;)I
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 223
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "areaStr":Ljava/lang/String;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 225
    .local v1, "rect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 226
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->printFoldedArea(Ljava/io/PrintWriter;)V

    .line 227
    return v2

    .line 228
    :cond_0
    const-string v3, "reset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 229
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 231
    :cond_1
    const-string v3, "(-?\\d+),(-?\\d+),(-?\\d+),(-?\\d+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 233
    .local v3, "flattenedPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 234
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_2

    .line 235
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v5, "Error: area should be LEFT,TOP,RIGHT,BOTTOM"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    const/4 v2, -0x1

    return v2

    .line 238
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    .line 239
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 238
    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 242
    .end local v3    # "flattenedPattern":Ljava/util/regex/Pattern;
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowManagerService;->setOverrideFoldedArea(Landroid/graphics/Rect;)V

    .line 243
    return v2
.end method

.method private runDisplayOverscan(Ljava/io/PrintWriter;)I
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "overscanStr":Ljava/lang/String;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 249
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result v8

    .line 250
    .local v8, "displayId":I
    const-string v2, "reset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    .line 251
    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 253
    :cond_0
    const-string v2, "(-?\\d+),(-?\\d+),(-?\\d+),(-?\\d+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 255
    .local v2, "FLATTENED_PATTERN":Ljava/util/regex/Pattern;
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 256
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: bad rectangle arg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    const/4 v4, -0x1

    return v4

    .line 260
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 261
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 262
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 263
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 266
    .end local v2    # "FLATTENED_PATTERN":Ljava/util/regex/Pattern;
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    move v3, v8

    invoke-interface/range {v2 .. v7}, Landroid/view/IWindowManager;->setOverscan(IIIII)V

    .line 267
    return v9
.end method

.method private runDisplayScaling(Ljava/io/PrintWriter;)I
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "scalingStr":Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3, v2}, Landroid/view/IWindowManager;->setForcedDisplayScalingMode(II)V

    goto :goto_0

    .line 275
    :cond_0
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/view/IWindowManager;->setForcedDisplayScalingMode(II)V

    .line 282
    :goto_0
    return v2

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: scaling must be \'auto\' or \'off\'"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    const/4 v1, -0x1

    return v1
.end method

.method private runDisplaySize(Ljava/io/PrintWriter;)I
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "size":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result v1

    .line 128
    .local v1, "displayId":I
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 129
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplaySize(Ljava/io/PrintWriter;I)V

    .line 130
    return v2

    .line 131
    :cond_0
    const-string v3, "-d"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplaySize(Ljava/io/PrintWriter;I)V

    .line 133
    return v2

    .line 134
    :cond_1
    const-string v3, "reset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    .line 135
    move v3, v4

    .local v3, "h":I
    .local v4, "w":I
    goto :goto_0

    .line 137
    .end local v3    # "h":I
    .end local v4    # "w":I
    :cond_2
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 138
    .local v3, "div":I
    if-lez v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v3, v5, :cond_3

    goto :goto_2

    .line 142
    :cond_3
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "wstr":Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, "hstr":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v5, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->parseDimension(Ljava/lang/String;I)I

    move-result v7

    .line 146
    .local v7, "w":I
    invoke-direct {p0, v6, v1}, Lcom/android/server/wm/WindowManagerShellCommand;->parseDimension(Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .local v4, "h":I
    move v3, v4

    move v4, v7

    .line 153
    .end local v5    # "wstr":Ljava/lang/String;
    .end local v6    # "hstr":Ljava/lang/String;
    .end local v7    # "w":I
    .local v3, "h":I
    .local v4, "w":I
    :goto_0
    if-ltz v4, :cond_4

    if-ltz v3, :cond_4

    .line 154
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v5, v1, v4, v3}, Landroid/view/IWindowManager;->setForcedDisplaySize(III)V

    goto :goto_1

    .line 156
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v5, v1}, Landroid/view/IWindowManager;->clearForcedDisplaySize(I)V

    .line 158
    :goto_1
    return v2

    .line 147
    .end local v4    # "w":I
    .local v3, "div":I
    .restart local v5    # "wstr":Ljava/lang/String;
    .restart local v6    # "hstr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: bad number "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    return v4

    .line 139
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "wstr":Ljava/lang/String;
    .end local v6    # "hstr":Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: bad size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    return v4
.end method

.method private runSetDisplayUserRotation(Ljava/io/PrintWriter;)I
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 308
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "lockMode":Ljava/lang/String;
    const/4 v1, 0x0

    .line 311
    .local v1, "displayId":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "arg":Ljava/lang/String;
    const-string v3, "-d"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 314
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 317
    :cond_0
    const-string v3, "free"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 318
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowManagerService;->thawDisplayRotation(I)V

    .line 319
    return v4

    .line 322
    :cond_1
    const-string v3, "lock"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, -0x1

    if-nez v3, :cond_2

    .line 323
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: lock mode needs to be either free or lock."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    return v5

    .line 328
    :cond_2
    if-eqz v2, :cond_3

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 331
    :catch_0
    move-exception v3

    goto :goto_1

    .line 328
    :cond_3
    move v3, v4

    .line 329
    .local v3, "rotation":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v1, v3}, Lcom/android/server/wm/WindowManagerService;->freezeDisplayRotation(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    return v4

    .line 332
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    return v5
.end method

.method private runSetFixToUserRotation(Ljava/io/PrintWriter;)I
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "displayId":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "arg":Ljava/lang/String;
    const-string v2, "-d"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 342
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 346
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x5ff074bf

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eq v2, v3, :cond_4

    const v3, 0x10263a7c

    if-eq v2, v3, :cond_3

    const v3, 0x5c13d641

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_1

    :cond_3
    const-string v2, "disabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v6

    goto :goto_1

    :cond_4
    const-string v2, "enabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :goto_0
    move v2, v7

    :goto_1
    if-eqz v2, :cond_7

    if-eq v2, v6, :cond_6

    if-eq v2, v5, :cond_5

    .line 357
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: expecting enabled, disabled or default, but we get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    return v7

    .line 354
    :cond_5
    const/4 v2, 0x1

    .line 355
    .local v2, "fixedToUserRotation":I
    goto :goto_2

    .line 351
    .end local v2    # "fixedToUserRotation":I
    :cond_6
    const/4 v2, 0x1

    .line 352
    .restart local v2    # "fixedToUserRotation":I
    goto :goto_2

    .line 348
    .end local v2    # "fixedToUserRotation":I
    :cond_7
    const/4 v2, 0x2

    .line 349
    .restart local v2    # "fixedToUserRotation":I
    nop

    .line 362
    :goto_2
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/wm/WindowManagerService;->setRotateForApp(II)V

    .line 363
    return v4
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 55
    if-nez p1, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 60
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "scaling"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string v2, "density"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "overscan"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_3
    const-string v2, "size"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_4
    const-string v2, "dismiss-keyguard"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_5
    const-string v2, "folded-area"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_6
    const-string v2, "tracing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_7
    const-string v2, "set-user-rotation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_8
    const-string v2, "set-fix-to-user-rotation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :goto_0
    move v2, v1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 81
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetFixToUserRotation(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 79
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetDisplayUserRotation(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 77
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowTracing;->onShellCommand(Landroid/os/ShellCommand;)I

    move-result v1

    return v1

    .line 72
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDismissKeyguard(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 70
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayScaling(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 68
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayOverscan(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 66
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayFoldedArea(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 64
    :pswitch_7
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayDensity(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 62
    :pswitch_8
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplaySize(Ljava/io/PrintWriter;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 83
    :goto_2
    return v1

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x772d554f -> :sswitch_8
        -0x4e7d6aeb -> :sswitch_7
        -0x3f9f2f3e -> :sswitch_6
        -0x14126e26 -> :sswitch_5
        -0xdad5077 -> :sswitch_4
        0x35e001 -> :sswitch_3
        0x1f977951 -> :sswitch_2
        0x5c8c94e8 -> :sswitch_1
        0x71e5fb87 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    .line 368
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 369
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Window manager (window) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    const-string v1, "      Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    const-string v1, "  size [reset|WxH|WdpxHdp] [-d DISPLAY_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    const-string v1, "    Return or override display size."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    const-string v1, "    width and height in pixels unless suffixed with \'dp\'."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    const-string v1, "  density [reset|DENSITY] [-d DISPLAY_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    const-string v1, "    Return or override display density."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    const-string v1, "  folded-area [reset|LEFT,TOP,RIGHT,BOTTOM]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    const-string v1, "    Return or override folded area."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    const-string v1, "  overscan [reset|LEFT,TOP,RIGHT,BOTTOM] [-d DISPLAY ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    const-string v1, "    Set overscan area for display."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    const-string v1, "  scaling [off|auto] [-d DISPLAY_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    const-string v1, "    Set display scaling mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    const-string v1, "  dismiss-keyguard"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    const-string v1, "    Dismiss the keyguard, prompting user for auth if\u00a0necessary."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    const-string v1, "  set-user-rotation [free|lock] [-d DISPLAY_ID] [rotation]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    const-string v1, "    Set user rotation mode and user rotation."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    const-string v1, "  set-fix-to-user-rotation [-d DISPLAY_ID] [enabled|disabled]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    const-string v1, "    Enable or disable rotating display for app requested orientation."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    if-nez v1, :cond_0

    .line 390
    const-string v1, "  tracing (start | stop)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    const-string v1, "    Start or stop window tracing."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    :cond_0
    return-void
.end method
