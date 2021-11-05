.class Lcom/android/server/pm/InstantAppResolverConnection$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "InstantAppResolverConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/InstantAppResolverConnection;->getInstantAppIntentFilterList(Landroid/content/pm/InstantAppRequestInfo;Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;Landroid/os/Handler;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/InstantAppResolverConnection;

.field final synthetic val$callback:Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;

.field final synthetic val$callbackHandler:Landroid/os/Handler;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/android/server/pm/InstantAppResolverConnection;Landroid/os/Handler;Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/InstantAppResolverConnection;

    .line 119
    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->this$0:Lcom/android/server/pm/InstantAppResolverConnection;

    iput-object p2, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->val$callbackHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->val$callback:Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;

    iput-wide p4, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->val$startTime:J

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$sendResult$0(Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;Ljava/util/ArrayList;J)V
    .locals 0
    .param p0, "callback"    # Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;
    .param p1, "resolveList"    # Ljava/util/ArrayList;
    .param p2, "startTime"    # J

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;->onPhaseTwoResolved(Ljava/util/List;J)V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    nop

    .line 123
    const-string v0, "android.app.extra.RESOLVE_INFO"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 125
    .local v0, "resolveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/InstantAppResolveInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->val$callbackHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->val$callback:Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;

    iget-wide v3, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->val$startTime:J

    new-instance v5, Lcom/android/server/pm/-$$Lambda$InstantAppResolverConnection$1$eWvILRylTGnW4MEpM1wMNc5IMnY;

    invoke-direct {v5, v2, v0, v3, v4}, Lcom/android/server/pm/-$$Lambda$InstantAppResolverConnection$1$eWvILRylTGnW4MEpM1wMNc5IMnY;-><init>(Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;Ljava/util/ArrayList;J)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    return-void
.end method
