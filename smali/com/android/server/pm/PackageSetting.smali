.class public final Lcom/android/server/pm/PackageSetting;
.super Lcom/android/server/pm/PackageSettingBase;
.source "PackageSetting.java"


# instance fields
.field appId:I

.field pkg:Landroid/content/pm/PackageParser$Package;

.field sharedUser:Lcom/android/server/pm/SharedUserSetting;

.field private sharedUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageSetting;)V
    .locals 1
    .param p1, "orig"    # Lcom/android/server/pm/PackageSetting;

    .line 68
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageSettingBase;-><init>(Lcom/android/server/pm/PackageSettingBase;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSetting;->doCopy(Lcom/android/server/pm/PackageSetting;)V

    .line 70
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V
    .locals 0
    .param p1, "orig"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "realPkgName"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageSettingBase;-><init>(Lcom/android/server/pm/PackageSettingBase;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSetting;->doCopy(Lcom/android/server/pm/PackageSetting;)V

    .line 80
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V
    .locals 17
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
    .param p13, "parentPackageName"    # Ljava/lang/String;
    .param p15, "sharedUserId"    # I
    .param p16, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p17, "usesStaticLibrariesVersions"    # [J
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
            "JII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I[",
            "Ljava/lang/String;",
            "[J)V"
        }
    .end annotation

    .local p14, "childPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
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

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p16

    move-object/from16 v16, p17

    .line 56
    invoke-direct/range {v0 .. v16}, Lcom/android/server/pm/PackageSettingBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)V

    .line 60
    move/from16 v1, p15

    iput v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUserId:I

    .line 61
    return-void
.end method

.method private doCopy(Lcom/android/server/pm/PackageSetting;)V
    .locals 1
    .param p1, "orig"    # Lcom/android/server/pm/PackageSetting;

    .line 106
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 107
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 108
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 109
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUserId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUserId:I

    .line 110
    return-void
.end method


# virtual methods
.method public areInstallPermissionsFixed()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    return v0
.end method

.method public copyFrom(Lcom/android/server/pm/PackageSetting;)V
    .locals 0
    .param p1, "orig"    # Lcom/android/server/pm/PackageSetting;

    .line 101
    invoke-super {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->copyFrom(Lcom/android/server/pm/PackageSettingBase;)V

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSetting;->doCopy(Lcom/android/server/pm/PackageSetting;)V

    .line 103
    return-void
.end method

.method public getAppId()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->appId:I

    return v0
.end method

.method public getPackage()Landroid/content/pm/PackageParser$Package;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    return-object v0
.end method

.method public getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_0
    invoke-super {p0}, Lcom/android/server/pm/PackageSettingBase;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0
.end method

.method public getSharedUser()Lcom/android/server/pm/SharedUserSetting;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    return-object v0
.end method

.method public getSharedUserId()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_0

    .line 84
    iget v0, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    return v0

    .line 86
    :cond_0
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUserId:I

    return v0
.end method

.method public hasChildPackages()Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMatch(I)Z
    .locals 1
    .param p1, "flags"    # I

    .line 173
    const/high16 v0, 0x100000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    return v0

    .line 176
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isOdm()Z
    .locals 2

    .line 156
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

    .line 140
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

    .line 136
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

    .line 148
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

.method public isProductServices()Z
    .locals 2

    .line 152
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

.method public isSharedUser()Z
    .locals 1

    .line 169
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

    .line 160
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

.method public isUpdatedSystem()Z
    .locals 1

    .line 164
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit16 v0, v0, 0x80

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

    .line 144
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

    .line 128
    iput-boolean p1, p0, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    .line 129
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageSetting{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
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

    .line 95
    return-object v0
.end method

.method public updateFrom(Lcom/android/server/pm/PackageSetting;)V
    .locals 1
    .param p1, "other"    # Lcom/android/server/pm/PackageSetting;

    .line 215
    invoke-super {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->updateFrom(Lcom/android/server/pm/PackageSettingBase;)Lcom/android/server/pm/PackageSettingBase;

    .line 216
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 217
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 218
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUserId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUserId:I

    .line 219
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 220
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;)V
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

    .line 184
    .local p4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 185
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

    .line 186
    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    const-wide v7, 0x10500000002L

    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 187
    const-wide v9, 0x10500000003L

    iget-wide v11, v0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 188
    const-wide v9, 0x10300000005L

    iget-wide v11, v0, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 189
    const-wide v9, 0x10300000006L

    iget-wide v11, v0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 190
    const-wide v9, 0x10900000007L

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 192
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_1

    .line 193
    const-wide v9, 0x10900000004L

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {p1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 195
    const-wide v9, 0x20b00000008L

    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 196
    .local v11, "splitToken":J
    const-string v4, "base"

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 197
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget v4, v4, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 198
    invoke-virtual {p1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 200
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 201
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v13, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v13, v13, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    array-length v13, v13

    if-ge v4, v13, :cond_1

    .line 202
    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 203
    iget-object v13, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v13, v13, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v13, v13, v4

    invoke-virtual {p1, v5, v6, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 204
    iget-object v13, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v13, v13, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v13, v13, v4

    invoke-virtual {p1, v7, v8, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 205
    invoke-virtual {p1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 201
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 209
    .end local v4    # "i":I
    .end local v11    # "splitToken":J
    :cond_1
    const-wide v4, 0x20b00000009L

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/pm/PackageSetting;->writeUsersInfoToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 210
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 211
    return-void
.end method
