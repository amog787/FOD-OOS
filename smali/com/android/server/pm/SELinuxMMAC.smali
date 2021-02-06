.class public final Lcom/android/server/pm/SELinuxMMAC;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# static fields
.field private static final DEBUG_POLICY:Z = false

.field private static final DEBUG_POLICY_INSTALL:Z = false

.field private static final DEBUG_POLICY_ORDER:Z = false

.field private static final DEFAULT_SEINFO:Ljava/lang/String; = "default"

.field private static final PRIVILEGED_APP_STR:Ljava/lang/String; = ":privapp"

.field static final SELINUX_LATEST_CHANGES:J = 0x88e3d87L

.field static final TAG:Ljava/lang/String; = "SELinuxMMAC"

.field private static final TARGETSDKVERSION_STR:Ljava/lang/String; = ":targetSdkVersion="

.field private static sMacPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static sPolicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/Policy;",
            ">;"
        }
    .end annotation
.end field

.field private static sPolicyRead:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    .line 95
    new-instance v1, Ljava/io/File;

    .line 96
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "/etc/selinux/plat_mac_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Ljava/io/File;

    .line 100
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "/etc/selinux/system_ext_mac_permissions.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .local v0, "systemExtMacPermission":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 107
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "/etc/selinux/product_mac_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    .local v1, "productMacPermission":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_1
    new-instance v2, Ljava/io/File;

    .line 116
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "/etc/selinux/vendor_mac_permissions.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    .local v2, "vendorMacPermission":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_2
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "/etc/selinux/nonplat_mac_permissions.xml"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :goto_0
    new-instance v3, Ljava/io/File;

    .line 127
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "/etc/selinux/odm_mac_permissions.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    .local v3, "odmMacPermission":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 129
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v0    # "systemExtMacPermission":Ljava/io/File;
    .end local v1    # "productMacPermission":Ljava/io/File;
    .end local v2    # "vendorMacPermission":Ljava/io/File;
    .end local v3    # "odmMacPermission":Ljava/io/File;
    :cond_3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/compat/PlatformCompat;)Ljava/lang/String;
    .locals 3
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "sharedUserSetting"    # Lcom/android/server/pm/SharedUserSetting;
    .param p2, "compatibility"    # Lcom/android/server/compat/PlatformCompat;

    .line 373
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getTargetSdkVersionForSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/compat/PlatformCompat;)I

    move-result v0

    .line 377
    .local v0, "targetSdkVersion":I
    if-eqz p1, :cond_0

    .line 378
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->isPrivileged()Z

    move-result v1

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v1

    .line 379
    .local v1, "isPrivileged":Z
    :goto_0
    invoke-static {p0, v1, v0}, Lcom/android/server/pm/SELinuxMMAC;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZI)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZI)Ljava/lang/String;
    .locals 5
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "isPrivileged"    # Z
    .param p2, "targetSdkVersion"    # I

    .line 397
    const/4 v0, 0x0

    .line 398
    .local v0, "seInfo":Ljava/lang/String;
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    monitor-enter v1

    .line 399
    :try_start_0
    sget-boolean v2, Lcom/android/server/pm/SELinuxMMAC;->sPolicyRead:Z

    if-nez v2, :cond_0

    goto :goto_1

    .line 404
    :cond_0
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Policy;

    .line 405
    .local v3, "policy":Lcom/android/server/pm/Policy;
    invoke-virtual {v3, p0}, Lcom/android/server/pm/Policy;->getMatchedSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 406
    if-eqz v0, :cond_1

    .line 407
    goto :goto_1

    .line 409
    .end local v3    # "policy":Lcom/android/server/pm/Policy;
    :cond_1
    goto :goto_0

    .line 411
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    if-nez v0, :cond_3

    .line 414
    const-string v0, "default"

    .line 417
    :cond_3
    if-eqz p1, :cond_4

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":privapp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":targetSdkVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    return-object v0

    .line 411
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static getTargetSdkVersionForSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/compat/PlatformCompat;)I
    .locals 3
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "sharedUserSetting"    # Lcom/android/server/pm/SharedUserSetting;
    .param p2, "compatibility"    # Lcom/android/server/compat/PlatformCompat;

    .line 349
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget v0, p1, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    return v0

    .line 352
    :cond_0
    const-wide/32 v0, 0x88e3d87

    .line 353
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 352
    invoke-virtual {p2, v0, v1, v2}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    const/16 v0, 0x1e

    return v0

    .line 357
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    return v0
.end method

.method private static readCert(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 312
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "cert"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 314
    return-void
.end method

.method public static readInstallPolicy()Z
    .locals 14

    .line 147
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    monitor-enter v0

    .line 148
    :try_start_0
    sget-boolean v1, Lcom/android/server/pm/SELinuxMMAC;->sPolicyRead:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 149
    monitor-exit v0

    return v2

    .line 151
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 156
    .local v1, "policies":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/Policy;>;"
    const/4 v0, 0x0

    .line 157
    .local v0, "policyFile":Ljava/io/FileReader;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 159
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 160
    .local v4, "count":I
    const/4 v5, 0x0

    move v13, v5

    move-object v5, v0

    move v0, v13

    .local v0, "i":I
    .local v5, "policyFile":Ljava/io/FileReader;
    :goto_0
    const/4 v6, 0x0

    if-ge v0, v4, :cond_6

    .line 161
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 163
    .local v7, "macPermission":Ljava/io/File;
    :try_start_1
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v5, v8

    .line 164
    const-string v8, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Using policy file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 167
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 168
    const/4 v8, 0x0

    const-string/jumbo v9, "policy"

    const/4 v10, 0x2

    invoke-interface {v3, v10, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_5

    .line 171
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    if-eq v8, v10, :cond_1

    .line 172
    goto :goto_1

    .line 175
    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, -0x35ca90d6    # -2972618.5f

    if-eq v11, v12, :cond_3

    :cond_2
    goto :goto_2

    :cond_3
    const-string/jumbo v11, "signer"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v9, v6

    :goto_2
    if-eqz v9, :cond_4

    .line 180
    invoke-static {v3}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    .line 177
    :cond_4
    invoke-static {v3}, Lcom/android/server/pm/SELinuxMMAC;->readSignerOrThrow(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/Policy;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    nop

    .line 180
    :goto_3
    goto :goto_1

    .line 197
    :cond_5
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 198
    nop

    .line 160
    .end local v7    # "macPermission":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    .restart local v7    # "macPermission":Ljava/io/File;
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 193
    :catch_0
    move-exception v2

    .line 194
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_2
    const-string v8, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    nop

    .line 197
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 195
    return v6

    .line 183
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 185
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception @"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v9, " while parsing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    const-string v9, "SELinuxMMAC"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    nop

    .line 197
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 192
    return v6

    .line 197
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :goto_4
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 198
    throw v2

    .line 202
    .end local v0    # "i":I
    .end local v7    # "macPermission":Ljava/io/File;
    :cond_6
    new-instance v0, Lcom/android/server/pm/PolicyComparator;

    invoke-direct {v0}, Lcom/android/server/pm/PolicyComparator;-><init>()V

    move-object v7, v0

    .line 203
    .local v7, "policySort":Lcom/android/server/pm/PolicyComparator;
    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 204
    invoke-virtual {v7}, Lcom/android/server/pm/PolicyComparator;->foundDuplicate()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 205
    const-string v0, "SELinuxMMAC"

    const-string v2, "ERROR! Duplicate entries found parsing mac_permissions.xml files"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return v6

    .line 209
    :cond_7
    sget-object v6, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    monitor-enter v6

    .line 210
    :try_start_4
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 211
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 212
    sput-boolean v2, Lcom/android/server/pm/SELinuxMMAC;->sPolicyRead:Z

    .line 219
    monitor-exit v6

    .line 221
    return v2

    .line 219
    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 151
    .end local v1    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/Policy;>;"
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "count":I
    .end local v5    # "policyFile":Ljava/io/FileReader;
    .end local v7    # "policySort":Lcom/android/server/pm/PolicyComparator;
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method private static readPackageOrThrow(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/Policy$PolicyBuilder;)V
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "pb"    # Lcom/android/server/pm/Policy$PolicyBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 291
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string/jumbo v2, "package"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string/jumbo v2, "name"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "pkgName":Ljava/lang/String;
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 295
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v0, :cond_0

    .line 296
    goto :goto_0

    .line 299
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "seinfo"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    const-string/jumbo v4, "value"

    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, "seinfo":Ljava/lang/String;
    invoke-virtual {p1, v2, v4}, Lcom/android/server/pm/Policy$PolicyBuilder;->addInnerPackageMapOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 303
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 304
    .end local v4    # "seinfo":Ljava/lang/String;
    goto :goto_1

    .line 305
    :cond_1
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 307
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 308
    :cond_2
    return-void
.end method

.method private static readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 318
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string/jumbo v2, "seinfo"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 320
    return-void
.end method

.method private static readSignerOrThrow(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/Policy;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 241
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string/jumbo v2, "signer"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 242
    new-instance v2, Lcom/android/server/pm/Policy$PolicyBuilder;

    invoke-direct {v2}, Lcom/android/server/pm/Policy$PolicyBuilder;-><init>()V

    .line 246
    .local v2, "pb":Lcom/android/server/pm/Policy$PolicyBuilder;
    const-string/jumbo v3, "signature"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "cert":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 248
    invoke-virtual {v2, v4}, Lcom/android/server/pm/Policy$PolicyBuilder;->addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 251
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5

    .line 252
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v0, :cond_1

    .line 253
    goto :goto_0

    .line 256
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "seinfo"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 258
    const-string/jumbo v6, "value"

    invoke-interface {p0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 259
    .local v6, "seinfo":Ljava/lang/String;
    invoke-virtual {v2, v6}, Lcom/android/server/pm/Policy$PolicyBuilder;->setGlobalSeinfoOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 260
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 261
    .end local v6    # "seinfo":Ljava/lang/String;
    goto :goto_1

    :cond_2
    const-string/jumbo v6, "package"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 262
    invoke-static {p0, v2}, Lcom/android/server/pm/SELinuxMMAC;->readPackageOrThrow(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/Policy$PolicyBuilder;)V

    goto :goto_1

    .line 263
    :cond_3
    const-string v6, "cert"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 264
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 265
    .local v6, "sig":Ljava/lang/String;
    invoke-virtual {v2, v6}, Lcom/android/server/pm/Policy$PolicyBuilder;->addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 266
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readCert(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 267
    .end local v6    # "sig":Ljava/lang/String;
    goto :goto_1

    .line 268
    :cond_4
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 270
    .end local v5    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 272
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/pm/Policy$PolicyBuilder;->build()Lcom/android/server/pm/Policy;

    move-result-object v0

    return-object v0
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p0, "p"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 323
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 326
    const/4 v0, 0x1

    .line 327
    .local v0, "depth":I
    :goto_0
    if-eqz v0, :cond_2

    .line 328
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 330
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 331
    goto :goto_1

    .line 333
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 334
    :goto_1
    goto :goto_0

    .line 337
    :cond_2
    return-void

    .line 324
    .end local v0    # "depth":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
