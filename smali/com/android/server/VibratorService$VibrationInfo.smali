.class Lcom/android/server/VibratorService$VibrationInfo;
.super Ljava/lang/Object;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VibrationInfo"
.end annotation


# instance fields
.field private final mEffect:Landroid/os/VibrationEffect;

.field private final mOpPkg:Ljava/lang/String;

.field private final mOriginalEffect:Landroid/os/VibrationEffect;

.field private final mReason:Ljava/lang/String;

.field private final mStartTimeDebug:J

.field private final mUid:I

.field private final mUsageHint:I


# direct methods
.method public constructor <init>(JLandroid/os/VibrationEffect;Landroid/os/VibrationEffect;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "startTimeDebug"    # J
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "originalEffect"    # Landroid/os/VibrationEffect;
    .param p5, "usageHint"    # I
    .param p6, "uid"    # I
    .param p7, "opPkg"    # Ljava/lang/String;
    .param p8, "reason"    # Ljava/lang/String;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-wide p1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mStartTimeDebug:J

    .line 333
    iput-object p3, p0, Lcom/android/server/VibratorService$VibrationInfo;->mEffect:Landroid/os/VibrationEffect;

    .line 334
    iput-object p4, p0, Lcom/android/server/VibratorService$VibrationInfo;->mOriginalEffect:Landroid/os/VibrationEffect;

    .line 335
    iput p5, p0, Lcom/android/server/VibratorService$VibrationInfo;->mUsageHint:I

    .line 336
    iput p6, p0, Lcom/android/server/VibratorService$VibrationInfo;->mUid:I

    .line 337
    iput-object p7, p0, Lcom/android/server/VibratorService$VibrationInfo;->mOpPkg:Ljava/lang/String;

    .line 338
    iput-object p8, p0, Lcom/android/server/VibratorService$VibrationInfo;->mReason:Ljava/lang/String;

    .line 339
    return-void
.end method


# virtual methods
.method printVibrationInfo()Ljava/lang/String;
    .locals 2

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "effect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originalEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mOriginalEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", usageHint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mUsageHint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", opPkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mOpPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    const-string/jumbo v1, "startTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-static {}, Landroid/icu/text/DateFormat;->getDateTimeInstance()Landroid/icu/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/VibratorService$VibrationInfo;->mStartTimeDebug:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string v1, ", effect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mEffect:Landroid/os/VibrationEffect;

    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 367
    const-string v1, ", originalEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mOriginalEffect:Landroid/os/VibrationEffect;

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 369
    const-string v1, ", usageHint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mUsageHint:I

    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 371
    const-string v1, ", uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mUid:I

    .line 372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    const-string v1, ", opPkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mOpPkg:Ljava/lang/String;

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mReason:Ljava/lang/String;

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    return-object v0
.end method
