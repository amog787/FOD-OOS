.class Lcom/android/server/am/ActivityManagerServiceInjector$4;
.super Ljava/lang/Object;
.source "ActivityManagerServiceInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceInjector;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerServiceInjector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerServiceInjector;

    .line 369
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$4;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$4;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$900(Lcom/android/server/am/ActivityManagerServiceInjector;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 373
    const-string v0, "ActivityManagerServiceInjector"

    const-string/jumbo v1, "retry get PCB No."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$1210()I

    .line 375
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$4;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$600(Lcom/android/server/am/ActivityManagerServiceInjector;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerServiceInjector;->getPCBNumber(Landroid/content/Context;)V

    .line 377
    :cond_0
    return-void
.end method
