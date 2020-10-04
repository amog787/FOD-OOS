.class final Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;
.super Lcom/android/server/biometrics/EnumerateClient;
.source "BiometricServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalEnumerateClient"
.end annotation


# instance fields
.field private mEnrolledList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            ">;"
        }
    .end annotation
.end field

.field private mUnknownHALTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            ">;"
        }
    .end annotation
.end field

.field private mUtils:Lcom/android/server/biometrics/BiometricUtils;

.field final synthetic this$0:Lcom/android/server/biometrics/BiometricServiceBase;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/BiometricUtils;)V
    .locals 13
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "daemon"    # Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .param p4, "halDeviceId"    # J
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "listener"    # Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .param p8, "groupId"    # I
    .param p9, "userId"    # I
    .param p10, "restricted"    # Z
    .param p11, "owner"    # Ljava/lang/String;
    .param p13, "utils"    # Lcom/android/server/biometrics/BiometricUtils;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;",
            "J",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;",
            "IIZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            ">;",
            "Lcom/android/server/biometrics/BiometricUtils;",
            ")V"
        }
    .end annotation

    .line 356
    .local p12, "enrolledList":Ljava/util/List;, "Ljava/util/List<+Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;>;"
    move-object v12, p0

    move-object v0, p1

    iput-object v0, v12, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    .line 357
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricServiceBase;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v2

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/EnumerateClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;)V

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mUnknownHALTemplates:Ljava/util/List;

    .line 359
    move-object/from16 v0, p12

    iput-object v0, v12, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    .line 360
    move-object/from16 v1, p13

    iput-object v1, v12, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mUtils:Lcom/android/server/biometrics/BiometricUtils;

    .line 361
    return-void
.end method

.method private doTemplateCleanup()V
    .locals 6

    .line 385
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 386
    return-void

    .line 391
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 393
    .local v1, "identifier":Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doTemplateCleanup(): Removing dangling template from framework: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 393
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mUtils:Lcom/android/server/biometrics/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 397
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->getTargetUserId()I

    move-result v4

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v5

    .line 396
    invoke-interface {v2, v3, v4, v5}, Lcom/android/server/biometrics/BiometricUtils;->removeBiometricForUser(Landroid/content/Context;II)V

    .line 398
    const/16 v2, 0x94

    .line 399
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->statsModality()I

    move-result v3

    const/4 v4, 0x2

    .line 398
    invoke-static {v2, v3, v4}, Landroid/util/StatsLog;->write(III)I

    .line 391
    .end local v1    # "identifier":Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 403
    return-void
.end method

.method private handleEnumeratedTemplate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .locals 4
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 364
    if-nez p1, :cond_0

    .line 365
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEnumeratedTemplate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "matched":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 370
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {v2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 371
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 372
    const/4 v0, 0x1

    .line 373
    goto :goto_1

    .line 369
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    .end local v1    # "i":I
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    if-eqz v1, :cond_3

    .line 379
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mUnknownHALTemplates:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_3
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Matched: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void
.end method


# virtual methods
.method public getUnknownHALTemplates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            ">;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mUnknownHALTemplates:Ljava/util/List;

    return-object v0
.end method

.method public onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .locals 5
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 414
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnumerationResult, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->handleEnumeratedTemplate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    .line 418
    if-nez p2, :cond_1

    .line 419
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->doTemplateCleanup()V

    .line 421
    :cond_1
    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method

.method protected statsModality()I
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->statsModality()I

    move-result v0

    return v0
.end method
