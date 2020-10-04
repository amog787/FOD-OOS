.class final Lcom/android/server/display/DisplayPowerController$BrightnessReason;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BrightnessReason"
.end annotation


# static fields
.field static final ADJUSTMENT_AUTO:I = 0x2

.field static final ADJUSTMENT_AUTO_TEMP:I = 0x1

.field static final MODIFIER_DIMMED:I = 0x1

.field static final MODIFIER_LOW_POWER:I = 0x2

.field static final MODIFIER_MASK:I = 0x3

.field static final REASON_AUTOMATIC:I = 0x4

.field static final REASON_BOOST:I = 0x9

.field static final REASON_DOZE:I = 0x2

.field static final REASON_DOZE_DEFAULT:I = 0x3

.field static final REASON_MANUAL:I = 0x1

.field static final REASON_MAX:I = 0x9

.field static final REASON_OVERRIDE:I = 0x7

.field static final REASON_SCREEN_OFF:I = 0x5

.field static final REASON_TEMPORARY:I = 0x8

.field static final REASON_UNKNOWN:I = 0x0

.field static final REASON_VR:I = 0x6


# instance fields
.field public modifier:I

.field public reason:I

.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 3375
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p2, "x1"    # Lcom/android/server/display/DisplayPowerController$1;

    .line 3375
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    return-void
.end method

.method private reasonToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "reason"    # I

    .line 3472
    packed-switch p1, :pswitch_data_0

    .line 3482
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3481
    :pswitch_0
    const-string v0, "boost"

    return-object v0

    .line 3480
    :pswitch_1
    const-string/jumbo v0, "temporary"

    return-object v0

    .line 3479
    :pswitch_2
    const-string/jumbo v0, "override"

    return-object v0

    .line 3478
    :pswitch_3
    const-string/jumbo v0, "vr"

    return-object v0

    .line 3477
    :pswitch_4
    const-string/jumbo v0, "screen_off"

    return-object v0

    .line 3476
    :pswitch_5
    const-string v0, "automatic"

    return-object v0

    .line 3475
    :pswitch_6
    const-string v0, "doze_default"

    return-object v0

    .line 3474
    :pswitch_7
    const-string v0, "doze"

    return-object v0

    .line 3473
    :pswitch_8
    const-string/jumbo v0, "manual"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addModifier(I)V
    .locals 1
    .param p1, "modifier"    # I

    .line 3429
    iget v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setModifier(I)V

    .line 3430
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 3434
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3437
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 3438
    .local v1, "other":Lcom/android/server/display/DisplayPowerController$BrightnessReason;
    iget v2, v1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    iget v3, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    iget v3, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 3435
    .end local v1    # "other":Lcom/android/server/display/DisplayPowerController$BrightnessReason;
    :cond_2
    :goto_0
    return v0
.end method

.method public set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V
    .locals 2
    .param p1, "other"    # Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 3407
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 3408
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p1, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setModifier(I)V

    .line 3409
    return-void
.end method

.method public setModifier(I)V
    .locals 2
    .param p1, "modifier"    # I

    .line 3420
    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_0

    .line 3421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "brightness modifier out of bounds: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3422
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3421
    const-string v1, "DisplayPowerController"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3424
    :cond_0
    iput p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    .line 3426
    :goto_0
    return-void
.end method

.method public setReason(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 3412
    if-ltz p1, :cond_1

    const/16 v0, 0x9

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 3415
    :cond_0
    iput p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    goto :goto_1

    .line 3413
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "brightness reason out of bounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerController"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3417
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 3443
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4
    .param p1, "adjustments"    # I

    .line 3447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3448
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3449
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3450
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 3451
    const-string v1, " temp_adj"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3453
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 3454
    const-string v1, " auto_adj"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3456
    :cond_1
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 3457
    const-string v1, " low_pwr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3459
    :cond_2
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 3460
    const-string v1, " dim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3462
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 3463
    .local v1, "strlen":I
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_4

    .line 3464
    add-int/lit8 v2, v1, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 3466
    :cond_4
    const-string v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3468
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
