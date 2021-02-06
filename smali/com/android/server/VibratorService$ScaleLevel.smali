.class final Lcom/android/server/VibratorService$ScaleLevel;
.super Ljava/lang/Object;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScaleLevel"
.end annotation


# instance fields
.field public final gamma:F

.field public final maxAmplitude:I


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "gamma"    # F

    .line 413
    const/16 v0, 0xff

    invoke-direct {p0, p1, v0}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(FI)V

    .line 414
    return-void
.end method

.method public constructor <init>(FI)V
    .locals 0
    .param p1, "gamma"    # F
    .param p2, "maxAmplitude"    # I

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput p1, p0, Lcom/android/server/VibratorService$ScaleLevel;->gamma:F

    .line 418
    iput p2, p0, Lcom/android/server/VibratorService$ScaleLevel;->maxAmplitude:I

    .line 419
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScaleLevel{gamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService$ScaleLevel;->gamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService$ScaleLevel;->maxAmplitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
