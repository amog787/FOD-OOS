.class abstract Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;
.super Ljava/lang/Object;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/color/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "NightDisplayAutoMode"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/color/ColorDisplayService;)V
    .locals 0

    .line 1475
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/ColorDisplayService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p2, "x1"    # Lcom/android/server/display/color/ColorDisplayService$1;

    .line 1475
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    return-void
.end method


# virtual methods
.method public abstract onActivated(Z)V
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 0
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .line 1487
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 0
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .line 1484
    return-void
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method
