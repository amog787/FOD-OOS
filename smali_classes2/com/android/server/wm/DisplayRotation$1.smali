.class Lcom/android/server/wm/DisplayRotation$1;
.super Ljava/lang/Object;
.source "DisplayRotation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayRotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayRotation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/DisplayRotation;

    .line 213
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$1;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$1;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->access$100(Lcom/android/server/wm/DisplayRotation;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/DisplayRotation;->access$200(Lcom/android/server/wm/DisplayRotation;ILandroid/window/WindowContainerTransaction;)V

    .line 217
    return-void
.end method
