.class Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DesiredDisplayModeSpecsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayManagerService;

    .line 3129
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesiredDisplayModeSpecsChanged()V
    .locals 1

    .line 3132
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$6200(Lcom/android/server/display/DisplayManagerService;)V

    .line 3133
    return-void
.end method
