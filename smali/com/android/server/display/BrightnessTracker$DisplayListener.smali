.class final Lcom/android/server/display/BrightnessTracker$DisplayListener;
.super Ljava/lang/Object;
.source "BrightnessTracker.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/display/BrightnessTracker;)V
    .locals 0

    .line 894
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$DisplayListener;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/BrightnessTracker;
    .param p2, "x1"    # Lcom/android/server/display/BrightnessTracker$1;

    .line 894
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker$DisplayListener;-><init>(Lcom/android/server/display/BrightnessTracker;)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 899
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 908
    if-nez p1, :cond_0

    .line 909
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$DisplayListener;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->access$600(Lcom/android/server/display/BrightnessTracker;)V

    .line 911
    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 904
    return-void
.end method
