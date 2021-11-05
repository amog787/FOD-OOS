.class abstract Lcom/android/server/PinnerService$PinRangeSource;
.super Ljava/lang/Object;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PinRangeSource"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PinnerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/PinnerService$1;

    .line 768
    invoke-direct {p0}, Lcom/android/server/PinnerService$PinRangeSource;-><init>()V

    return-void
.end method


# virtual methods
.method abstract read(Lcom/android/server/PinnerService$PinRange;)Z
.end method
