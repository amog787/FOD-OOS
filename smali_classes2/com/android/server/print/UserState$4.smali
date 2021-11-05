.class Lcom/android/server/print/UserState$4;
.super Lcom/android/server/print/UserState$ListenerRecord;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/UserState;->addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/print/UserState$ListenerRecord<",
        "Landroid/printservice/recommendation/IRecommendationsChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/print/UserState;Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/print/UserState;
    .param p2, "listener"    # Landroid/printservice/recommendation/IRecommendationsChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 656
    iput-object p1, p0, Lcom/android/server/print/UserState$4;->this$0:Lcom/android/server/print/UserState;

    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState$ListenerRecord;-><init>(Lcom/android/server/print/UserState;Landroid/os/IInterface;)V

    return-void
.end method


# virtual methods
.method public onBinderDied()V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/android/server/print/UserState$4;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v0}, Lcom/android/server/print/UserState;->access$200(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 660
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/UserState$4;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v1}, Lcom/android/server/print/UserState;->access$500(Lcom/android/server/print/UserState;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/android/server/print/UserState$4;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v1}, Lcom/android/server/print/UserState;->access$500(Lcom/android/server/print/UserState;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 663
    :cond_0
    monitor-exit v0

    .line 664
    return-void

    .line 663
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
