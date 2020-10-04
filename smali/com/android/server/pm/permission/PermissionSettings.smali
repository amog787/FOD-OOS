.class public Lcom/android/server/pm/permission/PermissionSettings;
.super Ljava/lang/Object;
.source "PermissionSettings.java"


# instance fields
.field final mAppOpPermissionPackages:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final mPermissionGroups:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissionTrees:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/BasePermission;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissions:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/BasePermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "lock"    # Ljava/lang/Object;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    .line 70
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    .line 78
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    .line 84
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionSettings;->mLock:Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public static readPermissions(Landroid/util/ArrayMap;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/BasePermission;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 155
    .local p0, "out":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 157
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 159
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 160
    goto :goto_0

    .line 163
    :cond_2
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/BasePermission;->readLPw(Ljava/util/Map;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 164
    const/4 v1, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element reading permissions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 168
    :cond_3
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 170
    :cond_4
    return-void
.end method


# virtual methods
.method public addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 95
    .local v0, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 96
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 97
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method public canPropagatePermissionToInstantApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "permName"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/BasePermission;

    .line 120
    .local v1, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 121
    .end local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;ZLcom/android/server/pm/DumpState;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "externalStorageEnforced"    # Z
    .param p5, "dumpState"    # Lcom/android/server/pm/DumpState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/android/server/pm/DumpState;",
            ")V"
        }
    .end annotation

    .line 175
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, "printedSomething":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 178
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, v1

    move-object v9, p5

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/permission/BasePermission;->dumpPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Set;ZZLcom/android/server/pm/DumpState;)Z

    move-result v4

    move v1, v4

    .line 180
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_0

    .line 181
    :cond_0
    if-nez p2, :cond_4

    if-nez p3, :cond_4

    .line 182
    const/4 v2, 0x0

    move v3, v2

    .local v3, "iperm":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 183
    if-nez v3, :cond_2

    .line 184
    invoke-virtual {p5}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 186
    :cond_1
    const-string v4, "AppOp Permissions:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    :cond_2
    const-string v4, "  AppOp Permission "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 190
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 192
    .local v4, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move v5, v2

    .local v5, "ipkg":I
    :goto_2
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 193
    const-string v6, "    "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 182
    .end local v4    # "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "ipkg":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 197
    .end local v1    # "printedSomething":Z
    .end local v3    # "iperm":I
    :cond_4
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;
    .locals 2
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 246
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    .line 248
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 247
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/permission/BasePermission;->enforcePermissionTree(Ljava/util/Collection;Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 249
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getAllPermissionTreesLocked()Ljava/util/Collection;
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/BasePermission;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getAllPermissionsLocked()Ljava/util/Collection;
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/BasePermission;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
    .locals 2
    .param p1, "permName"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/BasePermission;

    return-object v0
.end method

.method getPermissionTreeLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/BasePermission;

    return-object v0
.end method

.method isPermissionAppOp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "permName"    # Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/BasePermission;

    .line 262
    .local v1, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isAppOp()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 263
    .end local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPermissionInstant(Ljava/lang/String;)Z
    .locals 3
    .param p1, "permName"    # Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/BasePermission;

    .line 255
    .local v1, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 256
    .end local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "permission"    # Lcom/android/server/pm/permission/BasePermission;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-void
.end method

.method putPermissionTreeLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "permission"    # Lcom/android/server/pm/permission/BasePermission;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-void
.end method

.method public readPermissionTrees(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-static {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->readPermissions(Landroid/util/ArrayMap;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 134
    monitor-exit v0

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readPermissions(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-static {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->readPermissions(Landroid/util/ArrayMap;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 127
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removePermissionLocked(Ljava/lang/String;)V
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    return-void
.end method

.method removePermissionTreeLocked(Ljava/lang/String;)V
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    return-void
.end method

.method public transferPermissions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "origPackageName"    # Ljava/lang/String;
    .param p2, "newPackageName"    # Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 109
    if-nez v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    .line 110
    .local v2, "permissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;>;"
    :goto_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/BasePermission;

    .line 111
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v4, p1, p2}, Lcom/android/server/pm/permission/BasePermission;->transfer(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_2

    .line 107
    .end local v2    # "permissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writePermissionTrees(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 148
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/BasePermission;->writeLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 149
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_0

    .line 150
    :cond_0
    monitor-exit v0

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writePermissions(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 140
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/BasePermission;->writeLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 141
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_0

    .line 142
    :cond_0
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
