.class final Lcom/android/server/om/OverlayManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "OverlayManagerShellCommand.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInterface:Landroid/content/om/IOverlayManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/om/IOverlayManager;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "iom"    # Landroid/content/om/IOverlayManager;

    .line 50
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    .line 53
    return-void
.end method

.method private printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V
    .locals 4
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "oi"    # Landroid/content/om/OverlayInfo;

    .line 183
    iget v0, p2, Landroid/content/om/OverlayInfo;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    .line 192
    const-string v0, "---"

    .local v0, "status":Ljava/lang/String;
    goto :goto_0

    .line 186
    .end local v0    # "status":Ljava/lang/String;
    :cond_0
    const-string v0, "[x]"

    .line 187
    .restart local v0    # "status":Ljava/lang/String;
    goto :goto_0

    .line 189
    .end local v0    # "status":Ljava/lang/String;
    :cond_1
    const-string v0, "[ ]"

    .line 190
    .restart local v0    # "status":Ljava/lang/String;
    nop

    .line 195
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

    .line 196
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

    .line 199
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 201
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 203
    .local v1, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 204
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

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    return v4

    .line 206
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    .line 207
    nop

    .line 210
    goto :goto_0

    .line 214
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 215
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

    .line 219
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 221
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 222
    .local v1, "userId":I
    const/4 v2, 0x0

    .line 224
    .local v2, "inCategory":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    const/4 v5, 0x1

    if-eqz v3, :cond_5

    .line 225
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

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown option: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    return v5

    .line 230
    :cond_3
    const/4 v2, 0x1

    .line 231
    goto :goto_2

    .line 227
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    .line 228
    nop

    .line 234
    :goto_2
    goto :goto_0

    .line 237
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "overlay":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 239
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v6, v3, v1}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    move-result v6

    xor-int/2addr v5, v6

    return v5

    .line 241
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

    .line 124
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 125
    .local v0, "out":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 127
    .local v1, "err":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    .line 129
    .local v2, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 130
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

    goto :goto_2

    :goto_1
    move v5, v3

    :goto_2
    if-eqz v5, :cond_2

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    const/4 v3, 0x1

    return v3

    .line 132
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    .line 133
    nop

    .line 136
    goto :goto_0

    .line 140
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 142
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v6, v3, v2}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 146
    .local v6, "overlaysForTarget":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 147
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v7, v3, v2}, Landroid/content/om/IOverlayManager;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v7

    .line 148
    .local v7, "info":Landroid/content/om/OverlayInfo;
    if-eqz v7, :cond_4

    .line 149
    invoke-direct {p0, v0, v7}, Lcom/android/server/om/OverlayManagerShellCommand;->printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V

    .line 151
    :cond_4
    return v5

    .line 154
    .end local v7    # "info":Landroid/content/om/OverlayInfo;
    :cond_5
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 158
    .local v7, "n":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v7, :cond_6

    .line 159
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/om/OverlayInfo;

    invoke-direct {p0, v0, v9}, Lcom/android/server/om/OverlayManagerShellCommand;->printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V

    .line 158
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 162
    .end local v8    # "i":I
    :cond_6
    return v5

    .line 166
    .end local v6    # "overlaysForTarget":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v7    # "n":I
    :cond_7
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v6, v2}, Landroid/content/om/IOverlayManager;->getAllOverlays(I)Ljava/util/Map;

    move-result-object v6

    .line 167
    .local v6, "allOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 168
    .local v8, "targetPackageName":Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 171
    .local v9, "overlaysForTarget":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 172
    .local v10, "n":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    if-ge v11, v10, :cond_8

    .line 173
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/om/OverlayInfo;

    invoke-direct {p0, v0, v12}, Lcom/android/server/om/OverlayManagerShellCommand;->printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V

    .line 172
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 175
    .end local v11    # "i":I
    :cond_8
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 176
    .end local v8    # "targetPackageName":Ljava/lang/String;
    .end local v9    # "overlaysForTarget":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v10    # "n":I
    goto :goto_4

    .line 178
    :cond_9
    return v5
.end method

.method private runLookup()I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 275
    .local v1, "out":Ljava/io/PrintWriter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 277
    .local v2, "err":Ljava/io/PrintWriter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const-string v3, "--verbose"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 279
    .local v3, "verbose":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, "packageToLoad":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, "fullyQualifiedResourceName":Ljava/lang/String;
    const-string v0, "(.*?):(.*?)/(.*?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 283
    .local v6, "regex":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 284
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_0

    .line 285
    const-string v0, "Error: bad resource name, doesn\'t match package:type/name"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    return v8

    .line 289
    :cond_0
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/server/om/OverlayManagerShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 290
    .local v10, "pm":Landroid/content/pm/PackageManager;
    if-nez v10, :cond_1

    .line 291
    const-string v0, "Error: failed to get package manager"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    return v8

    .line 297
    :cond_1
    :try_start_0
    invoke-virtual {v10, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v11, v0

    .line 301
    .local v11, "res":Landroid/content/res/Resources;
    nop

    .line 302
    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    .line 304
    .local v12, "assets":Landroid/content/res/AssetManager;
    const/4 v13, 0x0

    :try_start_1
    invoke-virtual {v12, v8}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 308
    :try_start_2
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 309
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {v11, v5, v0, v13}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    .line 310
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v14

    .line 311
    .local v14, "valueString":Ljava/lang/CharSequence;
    invoke-virtual {v12}, Landroid/content/res/AssetManager;->getLastResourceResolution()Ljava/lang/String;

    move-result-object v15

    .line 313
    .local v15, "resolution":Ljava/lang/String;
    invoke-virtual {v11, v5, v0, v8}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    .line 314
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v17, v16

    .line 316
    .local v17, "resolvedString":Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    .line 317
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    :cond_2
    move-object/from16 v8, v17

    .end local v17    # "resolvedString":Ljava/lang/CharSequence;
    .local v8, "resolvedString":Ljava/lang/CharSequence;
    invoke-virtual {v14, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 321
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    move-object/from16 v18, v0

    goto :goto_0

    .line 323
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    .end local v0    # "value":Landroid/util/TypedValue;
    .local v18, "value":Landroid/util/TypedValue;
    const-string v0, " -> "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 325
    :goto_0
    nop

    .line 357
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V

    .line 325
    return v13

    .line 357
    .end local v8    # "resolvedString":Ljava/lang/CharSequence;
    .end local v14    # "valueString":Ljava/lang/CharSequence;
    .end local v15    # "resolution":Ljava/lang/String;
    .end local v18    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v0

    move/from16 v20, v3

    move-object/from16 v19, v6

    goto/16 :goto_4

    .line 326
    :catch_0
    move-exception v0

    .line 333
    const/4 v8, 0x1

    :try_start_3
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "pkg":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 335
    .local v8, "type":Ljava/lang/String;
    const/4 v13, 0x3

    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 336
    .local v13, "name":Ljava/lang/String;
    invoke-virtual {v11, v13, v8, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 337
    .local v14, "resid":I
    if-eqz v14, :cond_6

    .line 340
    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v15
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 341
    .local v15, "array":Landroid/content/res/TypedArray;
    if-eqz v3, :cond_4

    .line 342
    move-object/from16 v18, v0

    .end local v0    # "pkg":Ljava/lang/String;
    .local v18, "pkg":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v12}, Landroid/content/res/AssetManager;->getLastResourceResolution()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 351
    .end local v8    # "type":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "resid":I
    .end local v15    # "array":Landroid/content/res/TypedArray;
    .end local v18    # "pkg":Ljava/lang/String;
    :catch_1
    move-exception v0

    move/from16 v20, v3

    move-object/from16 v19, v6

    goto :goto_3

    .line 341
    .restart local v0    # "pkg":Ljava/lang/String;
    .restart local v8    # "type":Ljava/lang/String;
    .restart local v13    # "name":Ljava/lang/String;
    .restart local v14    # "resid":I
    .restart local v15    # "array":Landroid/content/res/TypedArray;
    :cond_4
    move-object/from16 v18, v0

    .line 344
    .end local v0    # "pkg":Ljava/lang/String;
    .restart local v18    # "pkg":Ljava/lang/String;
    :goto_1
    :try_start_5
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 345
    .local v0, "tv":Landroid/util/TypedValue;
    const/16 v19, 0x0

    move/from16 v20, v3

    move/from16 v3, v19

    .local v3, "i":I
    .local v20, "verbose":Z
    :goto_2
    move-object/from16 v19, v6

    .end local v6    # "regex":Ljava/util/regex/Pattern;
    .local v19, "regex":Ljava/util/regex/Pattern;
    :try_start_6
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 346
    invoke-virtual {v15, v3, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 347
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 345
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v6, v19

    goto :goto_2

    .line 349
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 350
    nop

    .line 357
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V

    .line 350
    return v3

    .line 338
    .end local v15    # "array":Landroid/content/res/TypedArray;
    .end local v18    # "pkg":Ljava/lang/String;
    .end local v19    # "regex":Ljava/util/regex/Pattern;
    .end local v20    # "verbose":Z
    .local v0, "pkg":Ljava/lang/String;
    .local v3, "verbose":Z
    .restart local v6    # "regex":Ljava/util/regex/Pattern;
    :cond_6
    move-object/from16 v18, v0

    move/from16 v20, v3

    move-object/from16 v19, v6

    .end local v0    # "pkg":Ljava/lang/String;
    .end local v3    # "verbose":Z
    .end local v6    # "regex":Ljava/util/regex/Pattern;
    .restart local v18    # "pkg":Ljava/lang/String;
    .restart local v19    # "regex":Ljava/util/regex/Pattern;
    .restart local v20    # "verbose":Z
    :try_start_7
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    .end local v1    # "out":Ljava/io/PrintWriter;
    .end local v2    # "err":Ljava/io/PrintWriter;
    .end local v4    # "packageToLoad":Ljava/lang/String;
    .end local v5    # "fullyQualifiedResourceName":Ljava/lang/String;
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "res":Landroid/content/res/Resources;
    .end local v12    # "assets":Landroid/content/res/AssetManager;
    .end local v19    # "regex":Ljava/util/regex/Pattern;
    .end local v20    # "verbose":Z
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerShellCommand;
    throw v0
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 351
    .end local v8    # "type":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "resid":I
    .end local v18    # "pkg":Ljava/lang/String;
    .restart local v1    # "out":Ljava/io/PrintWriter;
    .restart local v2    # "err":Ljava/io/PrintWriter;
    .restart local v4    # "packageToLoad":Ljava/lang/String;
    .restart local v5    # "fullyQualifiedResourceName":Ljava/lang/String;
    .restart local v7    # "matcher":Ljava/util/regex/Matcher;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "res":Landroid/content/res/Resources;
    .restart local v12    # "assets":Landroid/content/res/AssetManager;
    .restart local v19    # "regex":Ljava/util/regex/Pattern;
    .restart local v20    # "verbose":Z
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerShellCommand;
    :catch_2
    move-exception v0

    goto :goto_3

    .end local v19    # "regex":Ljava/util/regex/Pattern;
    .end local v20    # "verbose":Z
    .restart local v3    # "verbose":Z
    .restart local v6    # "regex":Ljava/util/regex/Pattern;
    :catch_3
    move-exception v0

    move/from16 v20, v3

    move-object/from16 v19, v6

    .line 353
    .end local v3    # "verbose":Z
    .end local v6    # "regex":Ljava/util/regex/Pattern;
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v19    # "regex":Ljava/util/regex/Pattern;
    .restart local v20    # "verbose":Z
    :goto_3
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: failed to get the resource "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 354
    nop

    .line 357
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V

    .line 354
    const/4 v3, 0x1

    return v3

    .line 357
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catchall_1
    move-exception v0

    goto :goto_4

    .end local v19    # "regex":Ljava/util/regex/Pattern;
    .end local v20    # "verbose":Z
    .restart local v3    # "verbose":Z
    .restart local v6    # "regex":Ljava/util/regex/Pattern;
    :catchall_2
    move-exception v0

    move/from16 v20, v3

    move-object/from16 v19, v6

    .end local v3    # "verbose":Z
    .end local v6    # "regex":Ljava/util/regex/Pattern;
    .restart local v19    # "regex":Ljava/util/regex/Pattern;
    .restart local v20    # "verbose":Z
    :goto_4
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V

    .line 358
    throw v0

    .line 298
    .end local v11    # "res":Landroid/content/res/Resources;
    .end local v12    # "assets":Landroid/content/res/AssetManager;
    .end local v19    # "regex":Ljava/util/regex/Pattern;
    .end local v20    # "verbose":Z
    .restart local v3    # "verbose":Z
    .restart local v6    # "regex":Ljava/util/regex/Pattern;
    :catch_4
    move-exception v0

    move/from16 v20, v3

    move-object/from16 v19, v6

    move-object v3, v0

    .end local v3    # "verbose":Z
    .end local v6    # "regex":Ljava/util/regex/Pattern;
    .restart local v19    # "regex":Ljava/util/regex/Pattern;
    .restart local v20    # "verbose":Z
    move-object v0, v3

    .line 299
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: failed to get resources for package "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    const/4 v3, 0x1

    return v3
.end method

.method private runSetPriority()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 248
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 250
    .local v1, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 251
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

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    return v4

    .line 253
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    .line 254
    nop

    .line 257
    goto :goto_0

    .line 261
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, "newParentPackageName":Ljava/lang/String;
    const-string v6, "highest"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 265
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v6, v2, v1}, Landroid/content/om/IOverlayManager;->setHighestPriority(Ljava/lang/String;I)Z

    move-result v6

    xor-int/2addr v4, v6

    return v4

    .line 266
    :cond_4
    const-string/jumbo v6, "lowest"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 267
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v6, v2, v1}, Landroid/content/om/IOverlayManager;->setLowestPriority(Ljava/lang/String;I)Z

    move-result v6

    xor-int/2addr v4, v6

    return v4

    .line 269
    :cond_5
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v6, v2, v5, v1}, Landroid/content/om/IOverlayManager;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    xor-int/2addr v4, v6

    return v4
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 9
    .param p1, "cmd"    # Ljava/lang/String;

    .line 57
    if-nez p1, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 62
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v7

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

    move v2, v6

    goto :goto_1

    :sswitch_3
    const-string/jumbo v2, "lookup"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :sswitch_4
    const-string v2, "enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v8

    goto :goto_1

    :sswitch_5
    const-string/jumbo v2, "set-priority"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_1

    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_7

    if-eq v2, v8, :cond_6

    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 74
    :cond_2
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runLookup()I

    move-result v1

    return v1

    .line 72
    :cond_3
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runSetPriority()I

    move-result v1

    return v1

    .line 70
    :cond_4
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableExclusive()I

    move-result v1

    return v1

    .line 68
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableDisable(Z)I

    move-result v1

    return v1

    .line 66
    :cond_6
    invoke-direct {p0, v8}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableDisable(Z)I

    move-result v1

    return v1

    .line 64
    :cond_7
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runList()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 80
    :catch_0
    move-exception v2

    .line 81
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

    .line 78
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 79
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

    .line 82
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    nop

    .line 83
    :goto_2
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x5120f151 -> :sswitch_5
        -0x4d6ada7d -> :sswitch_4
        -0x41645686 -> :sswitch_3
        -0x2f5d012c -> :sswitch_2
        0x32b09e -> :sswitch_1
        0x639e22e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onHelp()V
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 89
    .local v0, "out":Ljava/io/PrintWriter;
    const-string v1, "Overlay manager (overlay) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const-string v1, "  dump [--verbose] [--user USER_ID] [[FIELD] PACKAGE]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string v1, "    Print debugging information about the overlay manager."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string v1, "    With optional parameter PACKAGE, limit output to the specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    const-string v1, "    package. With optional parameter FIELD, limit output to"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string v1, "    the value of that SettingsItem field. Field names are"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-string v1, "    case insensitive and out.println the m prefix can be omitted,"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v1, "    so the following are equivalent: mState, mstate, State, state."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string v1, "  list [--user USER_ID] [PACKAGE]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-string v1, "    Print information about target and overlay packages."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    const-string v1, "    Overlay packages are printed in priority order. With optional"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    const-string v1, "    parameter PACKAGE, limit output to the specified package."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    const-string v1, "  enable [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    const-string v1, "    Enable overlay package PACKAGE."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    const-string v1, "  disable [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    const-string v1, "    Disable overlay package PACKAGE."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    const-string v1, "  enable-exclusive [--user USER_ID] [--category] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    const-string v1, "    Enable overlay package PACKAGE and disable all other overlays for"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    const-string v1, "    its target package. If the --category option is given, only disables"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const-string v1, "    other overlays in the same category."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    const-string v1, "  set-priority [--user USER_ID] PACKAGE PARENT|lowest|highest"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    const-string v1, "    Change the priority of the overlay PACKAGE to be just higher than"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    const-string v1, "    the priority of PACKAGE_PARENT If PARENT is the special keyword"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    const-string v1, "    \'lowest\', change priority of PACKAGE to the lowest priority."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    const-string v1, "    If PARENT is the special keyword \'highest\', change priority of"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    const-string v1, "    PACKAGE to the highest priority."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    const-string v1, "  lookup [--verbose] PACKAGE-TO-LOAD PACKAGE:TYPE/NAME"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    const-string v1, "    Load a package and print the value of a given resource"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    const-string v1, "    applying the current configuration and enabled overlays."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    const-string v1, "    For a more fine-grained alernative, use \'idmap2 lookup\'."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    return-void
.end method
