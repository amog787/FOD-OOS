.class public Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;
.super Landroid/content/integrity/IAppIntegrityManager$Stub;
.source "AppIntegrityManagerServiceImpl.java"


# static fields
.field public static final ADB_INSTALLER:Ljava/lang/String; = "adb"

.field private static final ALLOWED_INSTALLERS_METADATA_NAME:Ljava/lang/String; = "allowed-installers"

.field private static final ALLOWED_INSTALLER_DELIMITER:Ljava/lang/String; = ","

.field private static final BASE_APK_FILE:Ljava/lang/String; = "base.apk"

.field public static final DEBUG_INTEGRITY_COMPONENT:Z = false

.field private static final INSTALLER_PACKAGE_CERT_DELIMITER:Ljava/lang/String; = "\\|"

.field private static final PACKAGE_INSTALLER:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field private static final TAG:Ljava/lang/String; = "AppIntegrityManagerServiceImpl"

.field private static final UNKNOWN_INSTALLER:Ljava/lang/String; = ""


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEvaluationEngine:Lcom/android/server/integrity/engine/RuleEvaluationEngine;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mParserSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 122
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "com.google.android.packageinstaller"

    const-string v2, "com.android.packageinstaller"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->PACKAGE_INSTALLER:Ljava/util/Set;

    .line 122
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/integrity/engine/RuleEvaluationEngine;Lcom/android/server/integrity/IntegrityFileManager;Landroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p4, "evaluationEngine"    # Lcom/android/server/integrity/engine/RuleEvaluationEngine;
    .param p5, "integrityFileManager"    # Lcom/android/server/integrity/IntegrityFileManager;
    .param p6, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManagerInternal;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;",
            "Lcom/android/server/integrity/engine/RuleEvaluationEngine;",
            "Lcom/android/server/integrity/IntegrityFileManager;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 156
    .local p3, "parserSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/parsing/PackageParser2;>;"
    invoke-direct {p0}, Landroid/content/integrity/IAppIntegrityManager$Stub;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 158
    iput-object p2, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 159
    iput-object p3, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mParserSupplier:Ljava/util/function/Supplier;

    .line 160
    iput-object p4, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mEvaluationEngine:Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    .line 161
    iput-object p5, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    .line 162
    iput-object p6, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .local v0, "integrityVerificationFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    :try_start_0
    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    nop

    .line 172
    iget-object v1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;-><init>(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 186
    return-void

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Mime type malformed: should never happen."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static synthetic access$000(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    .line 97
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->handleIntegrityVerification(Landroid/content/Intent;)V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 137
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppIntegrityManagerServiceHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 140
    new-instance v8, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 142
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    sget-object v4, Lcom/android/server/integrity/-$$Lambda$6mVxeiJkzyLjahsCCu7FkV8cQDo;->INSTANCE:Lcom/android/server/integrity/-$$Lambda$6mVxeiJkzyLjahsCCu7FkV8cQDo;

    .line 144
    invoke-static {}, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->getRuleEvaluationEngine()Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    move-result-object v5

    .line 145
    invoke-static {}, Lcom/android/server/integrity/IntegrityFileManager;->getInstance()Lcom/android/server/integrity/IntegrityFileManager;

    move-result-object v6

    .line 146
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v7

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/integrity/engine/RuleEvaluationEngine;Lcom/android/server/integrity/IntegrityFileManager;Landroid/os/Handler;)V

    .line 140
    return-object v8
.end method

.method private extractSourceStamp(Landroid/net/Uri;Landroid/content/integrity/AppInstallMetadata$Builder;)V
    .locals 6
    .param p1, "dataUri"    # Landroid/net/Uri;
    .param p2, "appInstallMetadata"    # Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 486
    invoke-direct {p0, p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getInstallationPath(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 487
    .local v0, "installationPath":Ljava/io/File;
    if-eqz v0, :cond_4

    .line 492
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 493
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .local v1, "filesList":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    :try_start_1
    sget-object v2, Lcom/android/server/integrity/-$$Lambda$AppIntegrityManagerServiceImpl$ct2NSvc_tnI1IXBlQD5h7WqKow4;->INSTANCE:Lcom/android/server/integrity/-$$Lambda$AppIntegrityManagerServiceImpl$ct2NSvc_tnI1IXBlQD5h7WqKow4;

    .line 496
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 497
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 498
    .local v2, "apkFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2}, Landroid/util/apk/SourceStampVerifier;->verify(Ljava/util/List;)Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    .end local v2    # "apkFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "sourceStampVerificationResult":Landroid/util/apk/SourceStampVerificationResult;
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 501
    .end local v1    # "filesList":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    :cond_0
    goto :goto_1

    .line 493
    .end local v3    # "sourceStampVerificationResult":Landroid/util/apk/SourceStampVerificationResult;
    .restart local v1    # "filesList":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "installationPath":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;
    .end local p1    # "dataUri":Landroid/net/Uri;
    .end local p2    # "appInstallMetadata":Landroid/content/integrity/AppInstallMetadata$Builder;
    :cond_1
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 499
    .end local v1    # "filesList":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    .restart local v0    # "installationPath":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;
    .restart local p1    # "dataUri":Landroid/net/Uri;
    .restart local p2    # "appInstallMetadata":Landroid/content/integrity/AppInstallMetadata$Builder;
    :catch_0
    move-exception v1

    .line 500
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Could not read APK directory"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 503
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    nop

    .line 504
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/apk/SourceStampVerifier;->verify(Ljava/lang/String;)Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v3

    .line 507
    .restart local v3    # "sourceStampVerificationResult":Landroid/util/apk/SourceStampVerificationResult;
    :goto_1
    invoke-virtual {v3}, Landroid/util/apk/SourceStampVerificationResult;->isPresent()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/integrity/AppInstallMetadata$Builder;->setIsStampPresent(Z)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 508
    invoke-virtual {v3}, Landroid/util/apk/SourceStampVerificationResult;->isVerified()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/integrity/AppInstallMetadata$Builder;->setIsStampVerified(Z)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 510
    invoke-virtual {v3}, Landroid/util/apk/SourceStampVerificationResult;->isVerified()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/integrity/AppInstallMetadata$Builder;->setIsStampTrusted(Z)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 511
    invoke-virtual {v3}, Landroid/util/apk/SourceStampVerificationResult;->isVerified()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 512
    nop

    .line 513
    invoke-virtual {v3}, Landroid/util/apk/SourceStampVerificationResult;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 516
    .local v1, "sourceStampCertificate":Ljava/security/cert/X509Certificate;
    :try_start_5
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 517
    .local v2, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 518
    .local v4, "certificateDigest":[B
    invoke-static {v4}, Landroid/content/integrity/IntegrityUtils;->getHexDigest([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/integrity/AppInstallMetadata$Builder;->setStampCertificateHash(Ljava/lang/String;)Landroid/content/integrity/AppInstallMetadata$Builder;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_5} :catch_1

    .line 522
    nop

    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "certificateDigest":[B
    goto :goto_2

    .line 519
    :catch_1
    move-exception v2

    .line 520
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Error computing source stamp certificate digest"

    invoke-direct {v4, v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 524
    .end local v1    # "sourceStampCertificate":Ljava/security/cert/X509Certificate;
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :cond_3
    :goto_2
    return-void

    .line 488
    .end local v3    # "sourceStampVerificationResult":Landroid/util/apk/SourceStampVerificationResult;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Installation path is null, package not found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getAllowedInstallers(Landroid/content/pm/PackageInfo;)Ljava/util/Map;
    .locals 12
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 458
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 459
    .local v0, "packageCertMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 460
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 461
    .local v1, "metaData":Landroid/os/Bundle;
    const-string v2, "allowed-installers"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "allowedInstallers":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 464
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, "installerCertPairs":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    .line 466
    .local v7, "packageCertPair":Ljava/lang/String;
    nop

    .line 467
    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 468
    .local v8, "packageAndCert":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v9, v10, :cond_0

    .line 469
    aget-object v9, v8, v5

    invoke-direct {p0, v9}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 470
    .local v9, "packageName":Ljava/lang/String;
    aget-object v10, v8, v11

    .line 471
    .local v10, "cert":Ljava/lang/String;
    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "cert":Ljava/lang/String;
    goto :goto_1

    .line 472
    :cond_0
    array-length v9, v8

    if-ne v9, v11, :cond_1

    .line 473
    aget-object v9, v8, v5

    .line 474
    invoke-direct {p0, v9}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 473
    const-string v10, ""

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 472
    :cond_1
    :goto_1
    nop

    .line 465
    .end local v7    # "packageCertPair":Ljava/lang/String;
    .end local v8    # "packageAndCert":[Ljava/lang/String;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 481
    .end local v1    # "metaData":Landroid/os/Bundle;
    .end local v2    # "allowedInstallers":Ljava/lang/String;
    .end local v3    # "installerCertPairs":[Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method private getAllowedRuleProviderSystemApps()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 705
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 707
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 708
    const v1, 0x107004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 706
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 711
    .local v0, "integrityRuleProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .local v1, "systemAppRuleProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 713
    .local v3, "ruleProvider":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->isSystemApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 714
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    .end local v3    # "ruleProvider":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 717
    :cond_1
    return-object v1
.end method

.method private getCallerPackageNameOrThrow(I)Ljava/lang/String;
    .locals 3
    .param p1, "callingUid"    # I

    .line 663
    invoke-direct {p0, p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCallingRulePusherPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, "callerPackageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 669
    return-object v0

    .line 665
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only system packages specified in config_integrityRuleProviderPackages are allowed to call this method."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getCallingRulePusherPackageName(I)Ljava/lang/String;
    .locals 6
    .param p1, "callingUid"    # I

    .line 674
    invoke-direct {p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getAllowedRuleProviderSystemApps()Ljava/util/List;

    move-result-object v0

    .line 681
    .local v0, "allowedRuleProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageListForUid(I)Ljava/util/List;

    move-result-object v1

    .line 685
    .local v1, "callingPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 686
    .local v2, "allowedCallingPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 687
    .local v4, "packageName":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 688
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 692
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_1
    return-object v3
.end method

.method private getCertificateFingerprint(Landroid/content/pm/PackageInfo;)Ljava/util/List;
    .locals 6
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v0, "certificateFingerprints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 451
    .local v4, "signature":Landroid/content/pm/Signature;
    invoke-static {v4}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getFingerprint(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    .end local v4    # "signature":Landroid/content/pm/Signature;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 453
    :cond_0
    return-object v0
.end method

.method private static getFingerprint(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 6
    .param p0, "cert"    # Landroid/content/pm/Signature;

    .line 538
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 542
    .local v0, "input":Ljava/io/InputStream;
    :try_start_0
    const-string v1, "X509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 545
    .local v1, "factory":Ljava/security/cert/CertificateFactory;
    nop

    .line 546
    const/4 v2, 0x0

    .line 548
    .local v2, "certificate":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_0

    .line 549
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 551
    :catch_0
    move-exception v3

    .line 552
    .local v3, "e":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error getting X509Certificate"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 553
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :cond_0
    :goto_0
    nop

    .line 555
    if-eqz v2, :cond_1

    .line 560
    :try_start_2
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 561
    .local v3, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 562
    .local v4, "publicKey":[B
    invoke-static {v4}, Landroid/content/integrity/IntegrityUtils;->getHexDigest([B)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v5

    .line 563
    .end local v3    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "publicKey":[B
    :catch_1
    move-exception v3

    .line 564
    .local v3, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Error error computing fingerprint"

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 556
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "X509 Certificate not found"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 543
    .end local v1    # "factory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "certificate":Ljava/security/cert/X509Certificate;
    :catch_2
    move-exception v1

    .line 544
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error getting CertificateFactory"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getInstallationPath(Landroid/net/Uri;)Ljava/io/File;
    .locals 5
    .param p1, "dataUri"    # Landroid/net/Uri;

    .line 643
    if-eqz p1, :cond_3

    .line 647
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 652
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 653
    .local v1, "installationPath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 656
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 659
    return-object v1

    .line 657
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot read file for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 654
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find file for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 649
    .end local v1    # "installationPath":Ljava/io/File;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported scheme for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 644
    .end local v0    # "scheme":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null data uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getInstallerCertificateFingerprint(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "installer"    # Ljava/lang/String;
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

    .line 434
    const-string v0, "adb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 438
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 439
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x8000000

    .line 440
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 441
    .local v0, "installerInfo":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCertificateFingerprint(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 442
    .end local v0    # "installerInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installer package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppIntegrityManagerServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 435
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getInstallerPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 373
    nop

    .line 374
    const-string v0, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "installer":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 376
    const-string v1, "adb"

    return-object v1

    .line 378
    :cond_0
    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 379
    .local v1, "installerUid":I
    const-string v3, "AppIntegrityManagerServiceImpl"

    const-string v4, ""

    if-gez v1, :cond_1

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installer cannot be determined: installer: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " installer UID: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-object v4

    .line 391
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageListForUid(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 392
    return-object v4

    .line 400
    :cond_2
    sget-object v5, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->PACKAGE_INSTALLER:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 401
    const-string v5, "android.intent.extra.ORIGINATING_UID"

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 402
    .local v2, "originatingUid":I
    if-gez v2, :cond_3

    .line 403
    const-string v5, "Installer is package installer but originating UID not found."

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-object v4

    .line 406
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageListForUid(I)Ljava/util/List;

    move-result-object v5

    .line 407
    .local v5, "installerPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 408
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No package found associated with originating UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return-object v4

    .line 412
    :cond_4
    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 415
    .end local v2    # "originatingUid":I
    .end local v5    # "installerPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    return-object v0
.end method

.method private getMultiApkInfo(Ljava/io/File;)Landroid/content/pm/PackageInfo;
    .locals 11
    .param p1, "multiApkDirectory"    # Ljava/io/File;

    .line 599
    const-string v0, "AppIntegrityManagerServiceImpl"

    new-instance v1, Ljava/io/File;

    const-string v2, "base.apk"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 600
    .local v1, "baseFile":Ljava/io/File;
    iget-object v2, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 601
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 603
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 602
    const v4, 0x8000080

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 607
    .local v2, "basePackageInfo":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_2

    .line 608
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v3, v6

    .line 609
    .local v7, "apkFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 610
    goto :goto_2

    .line 616
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 617
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 619
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 618
    invoke-virtual {v8, v9, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v8

    .line 626
    goto :goto_1

    .line 622
    :catch_0
    move-exception v8

    .line 625
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception reading "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 627
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v2, :cond_1

    .line 628
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found package info from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    goto :goto_3

    .line 608
    .end local v7    # "apkFile":Ljava/io/File;
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 634
    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    .line 639
    return-object v2

    .line 635
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Base package info cannot be found from installation directory"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPackageArchiveInfo(Landroid/net/Uri;)Landroid/content/pm/PackageInfo;
    .locals 16
    .param p1, "dataUri"    # Landroid/net/Uri;

    .line 569
    invoke-direct/range {p0 .. p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getInstallationPath(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 570
    .local v1, "installationPath":Ljava/io/File;
    if-eqz v1, :cond_2

    .line 574
    move-object/from16 v2, p0

    :try_start_0
    iget-object v0, v2, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mParserSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/PackageParser2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 575
    .local v3, "parser":Lcom/android/server/pm/parsing/PackageParser2;
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v3, v1, v0, v0}, Lcom/android/server/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    .line 576
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    const v15, 0x8000080

    .line 579
    .local v15, "flags":I
    const/4 v4, 0x1

    .line 580
    invoke-static {v0, v4}, Landroid/content/pm/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/ParsingPackageRead;Z)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v4

    .line 579
    invoke-interface {v0, v4}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 581
    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    new-instance v12, Landroid/content/pm/PackageUserState;

    invoke-direct {v12}, Landroid/content/pm/PackageUserState;-><init>()V

    .line 589
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    const/4 v14, 0x0

    .line 581
    move-object v4, v0

    move v6, v15

    invoke-static/range {v4 .. v14}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generate(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 591
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 581
    :cond_0
    return-object v4

    .line 574
    .end local v0    # "pkg":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .end local v15    # "flags":I
    :catchall_0
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v5, v0

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "installationPath":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;
    .end local p1    # "dataUri":Landroid/net/Uri;
    :cond_1
    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 591
    .end local v3    # "parser":Lcom/android/server/pm/parsing/PackageParser2;
    .restart local v1    # "installationPath":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;
    .restart local p1    # "dataUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "AppIntegrityManagerServiceImpl"

    invoke-static {v5, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    const/4 v3, 0x0

    return-object v3

    .line 571
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move-object/from16 v2, p0

    move-object/from16 v4, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Installation path is null, package not found"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPackageListForUid(I)Ljava/util/List;
    .locals 4
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 741
    :try_start_0
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "No packages were found for uid: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppIntegrityManagerServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 420
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 421
    return-object p1

    .line 425
    :cond_0
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 426
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 427
    .local v1, "hashBytes":[B
    invoke-static {v1}, Landroid/content/integrity/IntegrityUtils;->getHexDigest([B)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 428
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    .end local v1    # "hashBytes":[B
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "SHA-256 algorithm not found"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;
    .locals 4
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 527
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 529
    .local v0, "signingInfo":Landroid/content/pm/SigningInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 534
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v1

    return-object v1

    .line 530
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package signature not found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private handleIntegrityVerification(Landroid/content/Intent;)V
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;

    .line 270
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "AppIntegrityManagerServiceImpl"

    const-string v0, "android.content.pm.extra.VERIFICATION_ID"

    const/4 v4, -0x1

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 278
    .local v4, "verificationId":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getInstallerPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "installerPackageName":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->integrityCheckIncludesRuleProvider()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-direct {v1, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->isRuleProvider(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 285
    iget-object v7, v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v7, v4, v6}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V

    .line 287
    return-void

    .line 290
    :cond_0
    const-string v7, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v15, v7

    .line 292
    .local v15, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageArchiveInfo(Landroid/net/Uri;)Landroid/content/pm/PackageInfo;

    move-result-object v7

    move-object v14, v7

    .line 293
    .local v14, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v14, :cond_1

    .line 294
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot parse package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v7, v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v7, v4, v6}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V

    .line 298
    return-void

    .line 301
    :cond_1
    invoke-direct {v1, v14}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCertificateFingerprint(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object v7

    move-object v13, v7

    .line 302
    .local v13, "appCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 303
    invoke-direct {v1, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getInstallerCertificateFingerprint(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    move-object v12, v7

    .line 305
    .local v12, "installerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Landroid/content/integrity/AppInstallMetadata$Builder;

    invoke-direct {v7}, Landroid/content/integrity/AppInstallMetadata$Builder;-><init>()V

    move-object v10, v7

    .line 307
    .local v10, "builder":Landroid/content/integrity/AppInstallMetadata$Builder;
    invoke-direct {v1, v15}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/content/integrity/AppInstallMetadata$Builder;->setPackageName(Ljava/lang/String;)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 308
    invoke-virtual {v10, v13}, Landroid/content/integrity/AppInstallMetadata$Builder;->setAppCertificates(Ljava/util/List;)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 309
    const-string v7, "android.intent.extra.LONG_VERSION_CODE"

    const-wide/16 v8, -0x1

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v10, v7, v8}, Landroid/content/integrity/AppInstallMetadata$Builder;->setVersionCode(J)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 310
    invoke-direct {v1, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getPackageNameNormalized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/content/integrity/AppInstallMetadata$Builder;->setInstallerName(Ljava/lang/String;)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 311
    invoke-virtual {v10, v12}, Landroid/content/integrity/AppInstallMetadata$Builder;->setInstallerCertificates(Ljava/util/List;)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 312
    invoke-direct {v1, v15}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->isSystemApp(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v10, v7}, Landroid/content/integrity/AppInstallMetadata$Builder;->setIsPreInstalled(Z)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 313
    invoke-direct {v1, v14}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getAllowedInstallers(Landroid/content/pm/PackageInfo;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/content/integrity/AppInstallMetadata$Builder;->setAllowedInstallersAndCert(Ljava/util/Map;)Landroid/content/integrity/AppInstallMetadata$Builder;

    .line 314
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v7, v10}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->extractSourceStamp(Landroid/net/Uri;Landroid/content/integrity/AppInstallMetadata$Builder;)V

    .line 316
    invoke-virtual {v10}, Landroid/content/integrity/AppInstallMetadata$Builder;->build()Landroid/content/integrity/AppInstallMetadata;

    move-result-object v7

    move-object v11, v7

    .line 326
    .local v11, "appInstallMetadata":Landroid/content/integrity/AppInstallMetadata;
    iget-object v7, v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mEvaluationEngine:Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    invoke-virtual {v7, v11}, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->evaluate(Landroid/content/integrity/AppInstallMetadata;)Lcom/android/server/integrity/model/IntegrityCheckResult;

    move-result-object v7

    move-object/from16 v16, v7

    .line 336
    .local v16, "result":Lcom/android/server/integrity/model/IntegrityCheckResult;
    const/16 v7, 0xf7

    .line 339
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 340
    invoke-virtual {v11}, Landroid/content/integrity/AppInstallMetadata;->getVersionCode()J

    move-result-wide v17

    .line 342
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getLoggingResponse()I

    move-result v19

    .line 343
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/integrity/model/IntegrityCheckResult;->isCausedByAppCertRule()Z

    move-result v20

    .line 344
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/integrity/model/IntegrityCheckResult;->isCausedByInstallerRule()Z

    move-result v21

    .line 336
    move-object v8, v15

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    .end local v10    # "builder":Landroid/content/integrity/AppInstallMetadata$Builder;
    .end local v11    # "appInstallMetadata":Landroid/content/integrity/AppInstallMetadata;
    .local v22, "builder":Landroid/content/integrity/AppInstallMetadata$Builder;
    .local v23, "appInstallMetadata":Landroid/content/integrity/AppInstallMetadata;
    move-wide/from16 v10, v17

    move-object/from16 v17, v12

    .end local v12    # "installerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v17, "installerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v12, v0

    move-object/from16 v18, v13

    .end local v13    # "appCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v18, "appCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v13, v19

    move-object/from16 v19, v14

    .end local v14    # "packageInfo":Landroid/content/pm/PackageInfo;
    .local v19, "packageInfo":Landroid/content/pm/PackageInfo;
    move/from16 v14, v20

    move-object/from16 v20, v15

    .end local v15    # "packageName":Ljava/lang/String;
    .local v20, "packageName":Ljava/lang/String;
    move/from16 v15, v21

    invoke-static/range {v7 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IZZ)V

    .line 345
    iget-object v7, v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 347
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getEffect()Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    move-result-object v8

    sget-object v9, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->ALLOW:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    if-ne v8, v9, :cond_2

    .line 348
    move v8, v6

    goto :goto_0

    .line 349
    :cond_2
    move v8, v5

    .line 345
    :goto_0
    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "installerPackageName":Ljava/lang/String;
    .end local v16    # "result":Lcom/android/server/integrity/model/IntegrityCheckResult;
    .end local v17    # "installerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "appCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v22    # "builder":Landroid/content/integrity/AppInstallMetadata$Builder;
    .end local v23    # "appInstallMetadata":Landroid/content/integrity/AppInstallMetadata;
    goto :goto_1

    .line 356
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Error handling integrity verification"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    iget-object v3, v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V

    goto :goto_2

    .line 350
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "Invalid input to integrity verification"

    invoke-static {v3, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    iget-object v3, v1, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManagerInternal;->setIntegrityVerificationResult(II)V

    .line 362
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    nop

    .line 363
    :goto_2
    return-void
.end method

.method private integrityCheckIncludesRuleProvider()Z
    .locals 3

    .line 732
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 733
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 732
    const-string/jumbo v1, "verify_integrity_for_rule_provider"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private isRuleProvider(Ljava/lang/String;)Z
    .locals 3
    .param p1, "installerPackageName"    # Ljava/lang/String;

    .line 696
    invoke-direct {p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getAllowedRuleProviderSystemApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 697
    .local v1, "ruleProvider":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 698
    const/4 v0, 0x1

    return v0

    .line 700
    .end local v1    # "ruleProvider":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 701
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 722
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 723
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 724
    .local v1, "existingPackageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 725
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 724
    :goto_0
    return v0

    .line 726
    .end local v1    # "existingPackageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 727
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method static synthetic lambda$extractSourceStamp$1(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 496
    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCurrentRuleSetProvider()Ljava/lang/String;
    .locals 2

    .line 245
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCallerPackageNameOrThrow(I)Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    invoke-virtual {v0}, Lcom/android/server/integrity/IntegrityFileManager;->readMetadata()Lcom/android/server/integrity/model/RuleMetadata;

    move-result-object v0

    .line 248
    .local v0, "ruleMetadata":Lcom/android/server/integrity/model/RuleMetadata;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/integrity/model/RuleMetadata;->getRuleProvider()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/android/server/integrity/model/RuleMetadata;->getRuleProvider()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 250
    :cond_0
    const-string v1, ""

    .line 248
    :goto_0
    return-object v1
.end method

.method public getCurrentRuleSetVersion()Ljava/lang/String;
    .locals 2

    .line 234
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCallerPackageNameOrThrow(I)Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    invoke-virtual {v0}, Lcom/android/server/integrity/IntegrityFileManager;->readMetadata()Lcom/android/server/integrity/model/RuleMetadata;

    move-result-object v0

    .line 237
    .local v0, "ruleMetadata":Lcom/android/server/integrity/model/RuleMetadata;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/integrity/model/RuleMetadata;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {v0}, Lcom/android/server/integrity/model/RuleMetadata;->getVersion()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 239
    :cond_0
    const-string v1, ""

    .line 237
    :goto_0
    return-object v1
.end method

.method public getCurrentRules()Landroid/content/pm/ParceledListSlice;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation

    .line 255
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 257
    .local v0, "rules":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/Rule;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/integrity/IntegrityFileManager;->readRules(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 260
    goto :goto_0

    .line 258
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AppIntegrityManagerServiceImpl"

    const-string v3, "Error getting current rules"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public getWhitelistedRuleProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 266
    invoke-direct {p0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getAllowedRuleProviderSystemApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$updateRuleSet$0$AppIntegrityManagerServiceImpl(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V
    .locals 9
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "ruleProvider"    # Ljava/lang/String;
    .param p3, "rules"    # Landroid/content/pm/ParceledListSlice;
    .param p4, "statusReceiver"    # Landroid/content/IntentSender;

    .line 199
    const-string v0, "AppIntegrityManagerServiceImpl"

    const/4 v1, 0x1

    .line 201
    .local v1, "success":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/integrity/IntegrityFileManager;->writeRules(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    goto :goto_0

    .line 202
    :catch_0
    move-exception v2

    .line 203
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Error writing rules."

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    const/4 v1, 0x0

    .line 210
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const/16 v2, 0xf8

    invoke-static {v2, v1, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZLjava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 217
    .local v2, "intent":Landroid/content/Intent;
    xor-int/lit8 v3, v1, 0x1

    const-string v4, "android.content.integrity.extra.STATUS"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    :try_start_1
    iget-object v4, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p4

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    goto :goto_1

    .line 225
    :catch_1
    move-exception v3

    .line 226
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Error sending status feedback."

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public updateRuleSet(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V
    .locals 9
    .param p1, "version"    # Ljava/lang/String;
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/integrity/Rule;",
            ">;",
            "Landroid/content/IntentSender;",
            ")V"
        }
    .end annotation

    .line 192
    .local p2, "rules":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/integrity/Rule;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->getCallerPackageNameOrThrow(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "ruleProvider":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/integrity/-$$Lambda$AppIntegrityManagerServiceImpl$mjGol37R4-F3yOIKIoAbde7yLk0;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/integrity/-$$Lambda$AppIntegrityManagerServiceImpl$mjGol37R4-F3yOIKIoAbde7yLk0;-><init>(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    return-void
.end method
