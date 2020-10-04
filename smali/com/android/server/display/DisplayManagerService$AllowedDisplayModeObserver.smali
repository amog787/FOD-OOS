.class Lcom/android/server/display/DisplayManagerService$AllowedDisplayModeObserver;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/DisplayModeDirector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AllowedDisplayModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayManagerService;

    .line 2782
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$AllowedDisplayModeObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllowedDisplayModesChanged()V
    .locals 1

    .line 2784
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$AllowedDisplayModeObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$5700(Lcom/android/server/display/DisplayManagerService;)V

    .line 2785
    return-void
.end method
