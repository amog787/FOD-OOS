.class final Lcom/android/server/om/OverlayManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "OverlayManagerShellCommand.java"


# instance fields
.field private final mInterface:Landroid/content/om/IOverlayManager;


# direct methods
.method constructor <init>(Landroid/content/om/IOverlayManager;)V
    .locals 0
    .param p1, "iom"    # Landroid/content/om/IOverlayManager;

    .line 41
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    .line 43
    return-void
.end method

.method private printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V
    .locals 4
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "oi"    # Landroid/content/om/OverlayInfo;

    .line 167
    iget v0, p2, Landroid/content/om/OverlayInfo;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    .line 176
    const-string v0, "---"

    .local v0, "status":Ljava/lang/String;
    goto :goto_0

    .line 170
    .end local v0    # "status":Ljava/lang/String;
    :cond_0
    const-string v0, "[x]"

    .line 171
    .restart local v0    # "status":Ljava/lang/String;
    goto :goto_0

    .line 173
    .end local v0    # "status":Ljava/lang/String;
    :cond_1
    const-string v0, "[ ]"

    .line 174
    .restart local v0    # "status":Ljava/lang/String;
    nop

    .line 179
    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    iget-object v3, p2, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "%s %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method private runEnableDisable(Z)I
    .locals 7
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 185
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 187
    .local v1, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 188
    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x4f7b216b

    if-eq v5, v6, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v5, "--user"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    return v4

    .line 190
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    .line 191
    nop

    .line 194
    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v5, v2, p1, v1}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v5

    xor-int/2addr v4, v5

    return v4
.end method

.method private runEnableExclusive()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 205
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 206
    .local v1, "userId":I
    const/4 v2, 0x0

    .line 208
    .local v2, "inCategory":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    const/4 v5, 0x1

    if-eqz v3, :cond_5

    .line 209
    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x3f3229e

    if-eq v6, v7, :cond_2

    const v7, 0x4f7b216b

    if-eq v6, v7, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v6, "--user"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const-string v6, "--category"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v5

    :goto_1
    if-eqz v3, :cond_4

    if-eq v3, v5, :cond_3

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown option: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    return v5

    .line 214
    :cond_3
    const/4 v2, 0x1

    .line 215
    goto :goto_2

    .line 211
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    .line 212
    nop

    .line 218
    :goto_2
    goto :goto_0

    .line 221
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "overlay":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 223
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v6, v3, v1}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    move-result v6

    xor-int/2addr v5, v6

    return v5

    .line 225
    :cond_6
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v6, v3, v5, v1}, Landroid/content/om/IOverlayManager;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    move-result v6

    xor-int/2addr v5, v6

    return v5
.end method

.method private runList()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 109
    .local v0, "out":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 111
    .local v1, "err":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    .line 113
    .local v2, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 114
    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x4f7b216b

    if-eq v6, v7, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v6, "--user"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v5

    :goto_1
    if-eqz v3, :cond_2

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    const/4 v3, 0x1

    return v3

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    .line 117
    nop

    .line 120
    goto :goto_0

    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 126
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v6, v3, v2}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 130
    .local v6, "overlaysForTarget":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 131
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v7, v3, v2}, Landroid/content/om/IOverlayManager;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v7

    .line 132
    .local v7, "info":Landroid/content/om/OverlayInfo;
    if-eqz v7, :cond_4

    .line 133
    invoke-direct {p0, v0, v7}, Lcom/android/server/om/OverlayManagerShellCommand;->printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V

    .line 135
    :cond_4
    return v5

    .line 138
    .end local v7    # "info":Landroid/content/om/OverlayInfo;
    :cond_5
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 142
    .local v7, "n":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v7, :cond_6

    .line 143
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/om/OverlayInfo;

    invoke-direct {p0, v0, v9}, Lcom/android/server/om/OverlayManagerShellCommand;->printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V

    .line 142
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 146
    .end local v8    # "i":I
    :cond_6
    return v5

    .line 150
    .end local v6    # "overlaysForTarget":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v7    # "n":I
    :cond_7
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v6, v2}, Landroid/content/om/IOverlayManager;->getAllOverlays(I)Ljava/util/Map;

    move-result-object v6

    .line 151
    .local v6, "allOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 152
    .local v8, "targetPackageName":Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 155
    .local v9, "overlaysForTarget":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 156
    .local v10, "n":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    if-ge v11, v10, :cond_8

    .line 157
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/om/OverlayInfo;

    invoke-direct {p0, v0, v12}, Lcom/android/server/om/OverlayManagerShellCommand;->printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V

    .line 156
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 159
    .end local v11    # "i":I
    :cond_8
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 160
    .end local v8    # "targetPackageName":Ljava/lang/String;
    .end local v9    # "overlaysForTarget":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v10    # "n":I
    goto :goto_3

    .line 162
    :cond_9
    return v5
.end method

.method private runSetPriority()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 232
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 234
    .local v1, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 235
    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x4f7b216b

    if-eq v5, v6, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string v5, "--user"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    return v4

    .line 237
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    .line 238
    nop

    .line 241
    goto :goto_0

    .line 245
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, "newParentPackageName":Ljava/lang/String;
    const-string v6, "highest"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 249
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v6, v2, v1}, Landroid/content/om/IOverlayManager;->setHighestPriority(Ljava/lang/String;I)Z

    move-result v6

    xor-int/2addr v4, v6

    return v4

    .line 250
    :cond_4
    const-string/jumbo v6, "lowest"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 251
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v6, v2, v1}, Landroid/content/om/IOverlayManager;->setLowestPriority(Ljava/lang/String;I)Z

    move-result v6

    xor-int/2addr v4, v6

    return v4

    .line 253
    :cond_5
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v6, v2, v5, v1}, Landroid/content/om/IOverlayManager;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    xor-int/2addr v4, v6

    return v4
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 8
    .param p1, "cmd"    # Ljava/lang/String;

    .line 47
    if-nez p1, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 52
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v6

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :sswitch_2
    const-string v2, "enable-exclusive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_1

    :sswitch_3
    const-string v2, "enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v7

    goto :goto_1

    :sswitch_4
    const-string/jumbo v2, "set-priority"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_6

    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 62
    :cond_2
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runSetPriority()I

    move-result v1

    return v1

    .line 60
    :cond_3
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableExclusive()I

    move-result v1

    return v1

    .line 58
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableDisable(Z)I

    move-result v1

    return v1

    .line 56
    :cond_5
    invoke-direct {p0, v7}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableDisable(Z)I

    move-result v1

    return v1

    .line 54
    :cond_6
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runList()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 68
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 66
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 67
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    nop

    .line 71
    :goto_2
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5120f151 -> :sswitch_4
        -0x4d6ada7d -> :sswitch_3
        -0x2f5d012c -> :sswitch_2
        0x32b09e -> :sswitch_1
        0x639e22e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onHelp()V
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 77
    .local v0, "out":Ljava/io/PrintWriter;
    const-string v1, "Overlay manager (overlay) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string v1, "  dump [--verbose] [--user USER_ID] [[FIELD] PACKAGE]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    const-string v1, "    Print debugging information about the overlay manager."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string v1, "    With optional parameter PACKAGE, limit output to the specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string v1, "    package. With optional parameter FIELD, limit output to"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string v1, "    the value of that SettingsItem field. Field names are"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const-string v1, "    case insensitive and out.println the m prefix can be omitted,"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v1, "    so the following are equivalent: mState, mstate, State, state."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v1, "  list [--user USER_ID] [PACKAGE]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    const-string v1, "    Print information about target and overlay packages."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string v1, "    Overlay packages are printed in priority order. With optional"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v1, "    parameter PACKAGE, limit output to the specified package."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    const-string v1, "  enable [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const-string v1, "    Enable overlay package PACKAGE."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string v1, "  disable [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string v1, "    Disable overlay package PACKAGE."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    const-string v1, "  enable-exclusive [--user USER_ID] [--category] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string v1, "    Enable overlay package PACKAGE and disable all other overlays for"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-string v1, "    its target package. If the --category option is given, only disables"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v1, "    other overlays in the same category."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string v1, "  set-priority [--user USER_ID] PACKAGE PARENT|lowest|highest"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-string v1, "    Change the priority of the overlay PACKAGE to be just higher than"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    const-string v1, "    the priority of PACKAGE_PARENT If PARENT is the special keyword"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    const-string v1, "    \'lowest\', change priority of PACKAGE to the lowest priority."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    const-string v1, "    If PARENT is the special keyword \'highest\', change priority of"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    const-string v1, "    PACKAGE to the highest priority."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    return-void
.end method
