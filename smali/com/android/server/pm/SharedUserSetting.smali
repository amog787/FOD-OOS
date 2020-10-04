.class public final Lcom/android/server/pm/SharedUserSetting;
.super Lcom/android/server/pm/SettingBase;
.source "SharedUserSetting.java"


# instance fields
.field final name:Ljava/lang/String;

.field final packages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field seInfoTargetSdkVersion:I

.field final signatures:Lcom/android/server/pm/PackageSignatures;

.field signaturesChanged:Ljava/lang/Boolean;

.field uidFlags:I

.field uidPrivateFlags:I

.field userId:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "_name"    # Ljava/lang/String;
    .param p2, "_pkgFlags"    # I
    .param p3, "_pkgPrivateFlags"    # I

    .line 55
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    .line 49
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    .line 51
    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 56
    iput p2, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    .line 57
    iput p3, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    .line 58
    iput-object p1, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 59
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 60
    return-void
.end method


# virtual methods
.method addPackage(Lcom/android/server/pm/PackageSetting;)V
    .locals 2
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 100
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->pkgFlags:I

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->setFlags(I)V

    .line 105
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->pkgPrivateFlags:I

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->setPrivateFlags(I)V

    .line 107
    :cond_1
    return-void
.end method

.method public bridge synthetic copyFrom(Lcom/android/server/pm/SettingBase;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copyFrom(Lcom/android/server/pm/SettingBase;)V

    return-void
.end method

.method public fixSeInfoLocked()V
    .locals 7

    .line 134
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v0

    .line 135
    .local v0, "pkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 139
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 140
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v4, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    if-ge v3, v4, :cond_1

    .line 141
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v3, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 143
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    goto :goto_0

    .line 144
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 145
    .restart local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->isPrivileged()Z

    move-result v3

    invoke-virtual {v2}, Landroid/content/pm/PackageParser$Package;->isPrivileged()Z

    move-result v4

    or-int/2addr v3, v4

    .line 146
    .local v3, "isPrivileged":Z
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    iget v6, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    invoke-static {v2, v3, v5, v6}, Lcom/android/server/pm/SELinuxMMAC;->getSeInfo(Landroid/content/pm/PackageParser$Package;ZII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 148
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "isPrivileged":Z
    goto :goto_1

    .line 149
    :cond_3
    return-void

    .line 136
    :cond_4
    :goto_2
    return-void
.end method

.method public getNotInstalledUserIds()[I
    .locals 9

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "excludedUserIds":[I
    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 155
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    move-result-object v3

    .line 156
    .local v3, "userIds":[I
    if-nez v0, :cond_0

    .line 157
    move-object v0, v3

    goto :goto_2

    .line 159
    :cond_0
    array-length v4, v0

    const/4 v5, 0x0

    move-object v6, v0

    .end local v0    # "excludedUserIds":[I
    .local v6, "excludedUserIds":[I
    :goto_1
    if-ge v5, v4, :cond_2

    aget v7, v0, v5

    .line 160
    .local v7, "userId":I
    invoke-static {v3, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v8

    if-nez v8, :cond_1

    .line 161
    invoke-static {v6, v7}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v6

    .line 159
    .end local v7    # "userId":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v6

    .line 165
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "userIds":[I
    .end local v6    # "excludedUserIds":[I
    .restart local v0    # "excludedUserIds":[I
    :goto_2
    goto :goto_0

    .line 166
    :cond_3
    if-nez v0, :cond_4

    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    goto :goto_3

    :cond_4
    move-object v1, v0

    :goto_3
    return-object v1
.end method

.method public getPackages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 113
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .local v0, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Package;>;"
    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 115
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v3, :cond_2

    .line 116
    goto :goto_0

    .line 118
    :cond_2
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_0

    .line 120
    :cond_3
    return-object v0

    .line 111
    .end local v0    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Package;>;"
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    return-object v0
.end method

.method public isPrivileged()Z
    .locals 1

    .line 124
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->pkgPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method removePackage(Lcom/android/server/pm/PackageSetting;)Z
    .locals 4
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 76
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_0
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->pkgFlags:I

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 81
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    .line 82
    .local v0, "aggregatedFlags":I
    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 83
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    iget v3, v2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int/2addr v0, v3

    .line 84
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->setFlags(I)V

    .line 87
    .end local v0    # "aggregatedFlags":I
    :cond_2
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->pkgPrivateFlags:I

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 88
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    .line 89
    .local v0, "aggregatedPrivateFlags":I
    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 90
    .restart local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    iget v3, v2, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    or-int/2addr v0, v3

    .line 91
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->setPrivateFlags(I)V

    .line 94
    .end local v0    # "aggregatedPrivateFlags":I
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SharedUserSetting{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFrom(Lcom/android/server/pm/SharedUserSetting;)Lcom/android/server/pm/SharedUserSetting;
    .locals 2
    .param p1, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SharedUserSetting;->copyFrom(Lcom/android/server/pm/SettingBase;)V

    .line 172
    iget v0, p1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 173
    iget v0, p1, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    .line 174
    iget v0, p1, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    .line 175
    iget v0, p1, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 176
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 177
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 178
    iget-object v0, p1, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    .line 179
    return-object p0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 69
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 70
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 71
    iget-object v2, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 73
    return-void
.end method
