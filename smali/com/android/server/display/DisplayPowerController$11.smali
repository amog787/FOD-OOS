.class Lcom/android/server/display/DisplayPowerController$11;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayPowerController;->dump(Ljava/io/PrintWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;

.field final synthetic val$pw:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerController;

    .line 2676
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$11;->this$0:Lcom/android/server/display/DisplayPowerController;

    iput-object p2, p0, Lcom/android/server/display/DisplayPowerController$11;->val$pw:Ljava/io/PrintWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2679
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$11;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$11;->val$pw:Ljava/io/PrintWriter;

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->access$1200(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    .line 2680
    return-void
.end method
