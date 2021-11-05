.class public Lcom/android/server/pm/PackageSetting;
.super Lcom/android/server/pm/PackageSettingBase;
.source "PackageSetting.java"


# instance fields
.field appId:I

.field mimeGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field private pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

.field sharedUser:Lcom/android/server/pm/SharedUserSetting;

.field private sharedUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageSetting;)V
    .locals 1
    .param p1, "orig"    # Lcom/android/server/pm/PackageSetting;

    .line 93
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageSettingBase;-><init>(Lcom/android/server/pm/PackageSettingBase;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSetting;->doCopy(Lcom/android/server/pm/PackageSetting;)V

    .line 95
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V
    .locals 1
    .param p1, "orig"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "realPkgName"    # Ljava/lang/String;

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageSettingBase;-><init>(Lcom/android/server/pm/PackageSettingBase;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSetting;->doCopy(Lcom/android/server/pm/PackageSetting;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII[Ljava/lang/String;[JLjava/util/Map;)V
    .locals 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "resourcePath"    # Ljava/io/File;
    .param p5, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p6, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p7, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p8, "cpuAbiOverrideString"    # Ljava/lang/String;
    .param p9, "pVersionCode"    # J
    .param p11, "pkgFlags"    # I
    .param p12, "privateFlags"    # I
    .param p13, "sharedUserId"    # I
    .param p14, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p15, "usesStaticLibrariesVersions"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JIII[",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 80
    .local p16, "mimeGroups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    invoke-direct/range {v0 .. v14}, Lcom/android/server/pm/PackageSettingBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII[Ljava/lang/String;[J)V

    .line 70
    new-instance v0, Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;-><init>()V

    iput-object v0, v15, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 84
    move/from16 v0, p13

    iput v0, v15, Lcom/android/server/pm/PackageSetting;->sharedUserId:I

    .line 85
    move-object/from16 v1, p16

    invoke-direct {v15, v1}, Lcom/android/server/pm/PackageSetting;->copyMimeGroups(Ljava/util/Map;)V

    .line 86
    return-void
.end method

.method private copyMimeGroups(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 139
    .local p1, "newMimeGroups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    if-nez p1, :cond_0

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 141
    return-void

    .line 144
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 145
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 146
    .local v1, "mimeGroup":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 148
    .local v2, "mimeTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 149
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 151
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .end local v1    # "mimeGroup":Ljava/lang/String;
    .end local v2    # "mimeTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_1
    goto :goto_0

    .line 154
    :cond_2
    return-void
.end method

.method private doCopy(Lcom/android/server/pm/PackageSetting;)V
    .locals 1
    .param p1, "orig"    # Lcom/android/server/pm/PackageSetting;

    .line 131
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 132
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 133
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 134
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUserId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUserId:I

    .line 135
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageSetting;->copyMimeGroups(Ljava/util/Map;)V

    .line 136
    return-void
.end method

.method private getMimeGroupInternal(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 1
    .param p1, "mimeGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public areInstallPermissionsFixed()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    return v0
.end method

.method public copyFrom(Lcom/android/server/pm/PackageSetting;)V
    .locals 0
    .param p1, "orig"    # Lcom/android/server/pm/PackageSetting;

    .line 126
    invoke-super {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->copyFrom(Lcom/android/server/pm/PackageSettingBase;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSetting;->doCopy(Lcom/android/server/pm/PackageSetting;)V

    .line 128
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;)V
    .locals 14
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 271
    .local p4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 272
    .local v2, "packageToken":J
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_0
    const-wide v5, 0x10900000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 273
    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    const-wide v7, 0x10500000002L

    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 274
    const-wide v9, 0x10500000003L

    iget-wide v11, v0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 275
    const-wide v9, 0x10300000005L

    iget-wide v11, v0, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 276
    const-wide v9, 0x10300000006L

    iget-wide v11, v0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 277
    const-wide v9, 0x10900000007L

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 279
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v4, :cond_2

    .line 280
    const-wide v9, 0x10900000004L

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 282
    const-wide v9, 0x20b00000008L

    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 283
    .local v11, "splitToken":J
    const-string v4, "base"

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 284
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v4

    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 285
    invoke-virtual {p1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 287
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 288
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v13, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    if-ge v4, v13, :cond_1

    .line 289
    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 290
    iget-object v13, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v4

    invoke-virtual {p1, v5, v6, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 291
    iget-object v13, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 292
    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object v13

    aget v13, v13, v4

    .line 291
    invoke-virtual {p1, v7, v8, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 293
    invoke-virtual {p1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 288
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 297
    .end local v4    # "i":I
    :cond_1
    const-wide v7, 0x10b0000000aL

    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 298
    .local v7, "sourceToken":J
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 300
    const-wide v4, 0x10900000002L

    iget-object v6, v0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v6, v6, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 302
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 304
    .end local v7    # "sourceToken":J
    .end local v11    # "splitToken":J
    :cond_2
    const-wide v4, 0x20b00000009L

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/pm/PackageSetting;->writeUsersInfoToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 305
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 306
    return-void
.end method

.method public getAppId()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->appId:I

    return v0
.end method

.method public getMimeGroup(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "mimeGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSetting;->getMimeGroupInternal(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 259
    .local v0, "mimeTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 260
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown MIME group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_0
    invoke-super {p0}, Lcom/android/server/pm/PackageSettingBase;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0
.end method

.method public getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    return-object v0
.end method

.method public getSharedUser()Lcom/android/server/pm/SharedUserSetting;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    return-object v0
.end method

.method public getSharedUserId()I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_0

    .line 109
    iget v0, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    return v0

    .line 111
    :cond_0
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUserId:I

    return v0
.end method

.method public isMatch(I)Z
    .locals 1
    .param p1, "flags"    # I

    .line 238
    const/high16 v0, 0x100000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    return v0

    .line 241
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isOdm()Z
    .locals 2

    .line 225
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOem()Z
    .locals 2

    .line 209
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrivileged()Z
    .locals 1

    .line 205
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProduct()Z
    .locals 2

    .line 217
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSharedUser()Z
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSystem()Z
    .locals 2

    .line 229
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSystemExt()Z
    .locals 2

    .line 221
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVendor()Z
    .locals 2

    .line 213
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setInstallPermissionsFixed(Z)V
    .locals 0
    .param p1, "fixed"    # Z

    .line 196
    iput-boolean p1, p0, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    .line 197
    return-void
.end method

.method public setMimeGroup(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .param p1, "mimeGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 245
    .local p2, "mimeTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSetting;->getMimeGroupInternal(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 246
    .local v0, "oldMimeTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 251
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 252
    .local v1, "newMimeTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 253
    .local v2, "hasChanges":Z
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    return v2

    .line 247
    .end local v1    # "newMimeTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "hasChanges":Z
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown MIME group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageSetting{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    return-object v0
.end method

.method public updateFrom(Lcom/android/server/pm/PackageSetting;)V
    .locals 3
    .param p1, "other"    # Lcom/android/server/pm/PackageSetting;

    .line 310
    invoke-super {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->updateFrom(Lcom/android/server/pm/PackageSettingBase;)Lcom/android/server/pm/PackageSettingBase;

    .line 311
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 312
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 313
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUserId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUserId:I

    .line 314
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 316
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 317
    .local v0, "mimeGroupNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->updateMimeGroups(Ljava/util/Set;)V

    .line 319
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updateFrom(Lcom/android/server/pm/pkg/PackageStateUnserialized;)V

    .line 320
    return-void
.end method

.method updateMimeGroups(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 161
    .local p1, "newMimeGroupNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 163
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 168
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 171
    :cond_1
    new-instance v0, Landroid/util/ArrayMap;

    .line 172
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 174
    .local v0, "updatedMimeGroups":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 175
    .local v2, "mimeGroup":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 178
    :cond_2
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .end local v2    # "mimeGroup":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 181
    :cond_3
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 182
    return-void
.end method
