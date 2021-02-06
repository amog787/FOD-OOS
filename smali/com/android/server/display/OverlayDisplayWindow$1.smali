.class Lcom/android/server/display/OverlayDisplayWindow$1;
.super Ljava/lang/Object;
.source "OverlayDisplayWindow.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/OverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/OverlayDisplayWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/OverlayDisplayWindow;

    .line 291
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 294
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 298
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->access$000(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->access$100(Lcom/android/server/display/OverlayDisplayWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayWindow;->relayout()V

    .line 301
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->access$300(Lcom/android/server/display/OverlayDisplayWindow;)Lcom/android/server/display/OverlayDisplayWindow$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-static {v1}, Lcom/android/server/display/OverlayDisplayWindow;->access$200(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    invoke-interface {v0, v1}, Lcom/android/server/display/OverlayDisplayWindow$Listener;->onStateChanged(I)V

    goto :goto_0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayWindow;->dismiss()V

    .line 306
    :cond_1
    :goto_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 310
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->access$000(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayWindow;->dismiss()V

    .line 313
    :cond_0
    return-void
.end method
