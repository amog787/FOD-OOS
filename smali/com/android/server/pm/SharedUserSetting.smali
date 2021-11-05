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

.field processes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/component/ParsedProcess;",
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

    .line 60
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    .line 52
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    .line 54
    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 61
    iput p2, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    .line 62
    iput p3, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    .line 63
    iput-object p1, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 64
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 65
    return-void
.end method


# virtual methods
.method addPackage(Lcom/android/server/pm/PackageSetting;)V
    .locals 2
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 126
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->pkgFlags:I

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->setFlags(I)V

    .line 131
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->pkgPrivateFlags:I

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->setPrivateFlags(I)V

    .line 133
    :cond_1
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProcesses()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->addProcesses(Ljava/util/Map;)V

    .line 136
    :cond_2
    return-void
.end method

.method addProcesses(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/component/ParsedProcess;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p1, "newProcs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProcess;>;"
    if-eqz p1, :cond_2

    .line 82
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 83
    .local v0, "numProcs":I
    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    .line 86
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 87
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedProcess;

    .line 88
    .local v3, "newProc":Landroid/content/pm/parsing/component/ParsedProcess;
    iget-object v4, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedProcess;

    .line 89
    .local v4, "proc":Landroid/content/pm/parsing/component/ParsedProcess;
    if-nez v4, :cond_1

    .line 90
    new-instance v5, Landroid/content/pm/parsing/component/ParsedProcess;

    invoke-direct {v5, v3}, Landroid/content/pm/parsing/component/ParsedProcess;-><init>(Landroid/content/pm/parsing/component/ParsedProcess;)V

    move-object v4, v5

    .line 91
    iget-object v5, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {v4, v3}, Landroid/content/pm/parsing/component/ParsedProcess;->addStateFrom(Landroid/content/pm/parsing/component/ParsedProcess;)V

    .line 95
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "newProc":Landroid/content/pm/parsing/component/ParsedProcess;
    .end local v4    # "proc":Landroid/content/pm/parsing/component/ParsedProcess;
    :goto_1
    goto :goto_0

    .line 97
    .end local v0    # "numProcs":I
    :cond_2
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 74
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 75
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 76
    iget-object v2, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 78
    return-void
.end method

.method public fixSeInfoLocked()V
    .locals 6

    .line 163
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 167
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v2, :cond_2

    .line 168
    goto :goto_0

    .line 170
    :cond_2
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v2

    iget v3, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    if-ge v2, v3, :cond_3

    .line 171
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 173
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_3
    goto :goto_0

    .line 175
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 176
    .restart local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v2, :cond_6

    .line 177
    goto :goto_1

    .line 179
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->isPrivileged()Z

    move-result v2

    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v3

    or-int/2addr v2, v3

    .line 180
    .local v2, "isPrivileged":Z
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget v5, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    invoke-static {v4, v2, v5}, Lcom/android/server/pm/SELinuxMMAC;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setOverrideSeInfo(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 182
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "isPrivileged":Z
    goto :goto_1

    .line 183
    :cond_7
    return-void

    .line 164
    :cond_8
    :goto_2
    return-void
.end method

.method public getNotInstalledUserIds()[I
    .locals 9

    .line 200
    const/4 v0, 0x0

    .line 201
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

    .line 202
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    move-result-object v3

    .line 203
    .local v3, "userIds":[I
    if-nez v0, :cond_0

    .line 204
    move-object v0, v3

    goto :goto_2

    .line 206
    :cond_0
    array-length v4, v0

    const/4 v5, 0x0

    move-object v6, v0

    .end local v0    # "excludedUserIds":[I
    .local v6, "excludedUserIds":[I
    :goto_1
    if-ge v5, v4, :cond_2

    aget v7, v0, v5

    .line 207
    .local v7, "userId":I
    invoke-static {v3, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v8

    if-nez v8, :cond_1

    .line 208
    invoke-static {v6, v7}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v6

    .line 206
    .end local v7    # "userId":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v6

    .line 212
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "userIds":[I
    .end local v6    # "excludedUserIds":[I
    .restart local v0    # "excludedUserIds":[I
    :goto_2
    goto :goto_0

    .line 213
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
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 142
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    .local v0, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
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

    .line 144
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v3, :cond_2

    .line 145
    goto :goto_0

    .line 147
    :cond_2
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_0

    .line 149
    :cond_3
    return-object v0

    .line 140
    .end local v0    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPrivileged()Z
    .locals 1

    .line 153
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

    .line 100
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    return v0

    .line 104
    :cond_0
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->pkgFlags:I

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 105
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    .line 106
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

    .line 107
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    iget v3, v2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int/2addr v0, v3

    .line 108
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->setFlags(I)V

    .line 111
    .end local v0    # "aggregatedFlags":I
    :cond_2
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->pkgPrivateFlags:I

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 112
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    .line 113
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

    .line 114
    .restart local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    iget v3, v2, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    or-int/2addr v0, v3

    .line 115
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_1

    .line 116
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->setPrivateFlags(I)V

    .line 119
    .end local v0    # "aggregatedPrivateFlags":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->updateProcesses()V

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
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
    .locals 5
    .param p1, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SharedUserSetting;->copyFrom(Lcom/android/server/pm/SettingBase;)V

    .line 219
    iget v0, p1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 220
    iget v0, p1, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    .line 221
    iget v0, p1, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    .line 222
    iget v0, p1, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    iput v0, p0, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    .line 223
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 224
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 225
    iget-object v0, p1, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    .line 226
    iget-object v0, p1, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 228
    .local v0, "numProcs":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    .line 229
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 230
    new-instance v2, Landroid/content/pm/parsing/component/ParsedProcess;

    iget-object v3, p1, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    .line 231
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedProcess;

    invoke-direct {v2, v3}, Landroid/content/pm/parsing/component/ParsedProcess;-><init>(Landroid/content/pm/parsing/component/ParsedProcess;)V

    .line 232
    .local v2, "proc":Landroid/content/pm/parsing/component/ParsedProcess;
    iget-object v3, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .end local v2    # "proc":Landroid/content/pm/parsing/component/ParsedProcess;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "numProcs":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 235
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    .line 237
    :goto_1
    return-object p0
.end method

.method public updateProcesses()V
    .locals 3

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    .line 190
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 191
    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    iget-object v1, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 192
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v1, :cond_0

    .line 193
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProcesses()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/SharedUserSetting;->addProcesses(Ljava/util/Map;)V

    .line 190
    .end local v1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 196
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
