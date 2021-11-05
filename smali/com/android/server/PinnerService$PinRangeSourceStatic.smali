.class final Lcom/android/server/PinnerService$PinRangeSourceStatic;
.super Lcom/android/server/PinnerService$PinRangeSource;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PinRangeSourceStatic"
.end annotation


# instance fields
.field private mDone:Z

.field private final mPinLength:I

.field private final mPinStart:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "pinStart"    # I
    .param p2, "pinLength"    # I

    .line 782
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PinnerService$PinRangeSource;-><init>(Lcom/android/server/PinnerService$1;)V

    .line 780
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mDone:Z

    .line 783
    iput p1, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mPinStart:I

    .line 784
    iput p2, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mPinLength:I

    .line 785
    return-void
.end method


# virtual methods
.method read(Lcom/android/server/PinnerService$PinRange;)Z
    .locals 2
    .param p1, "outPinRange"    # Lcom/android/server/PinnerService$PinRange;

    .line 789
    iget v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mPinStart:I

    iput v0, p1, Lcom/android/server/PinnerService$PinRange;->start:I

    .line 790
    iget v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mPinLength:I

    iput v0, p1, Lcom/android/server/PinnerService$PinRange;->length:I

    .line 791
    iget-boolean v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mDone:Z

    .line 792
    .local v0, "done":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mDone:Z

    .line 793
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method
