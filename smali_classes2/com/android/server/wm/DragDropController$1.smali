.class Lcom/android/server/wm/DragDropController$1;
.super Ljava/lang/Object;
.source "DragDropController.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DragDropController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DragDropController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DragDropController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/DragDropController;

    .line 71
    iput-object p1, p0, Lcom/android/server/wm/DragDropController$1;->this$0:Lcom/android/server/wm/DragDropController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
