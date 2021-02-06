.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$tiXDbuKN6VpLu_LpIYLaGBekDJU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

.field public final synthetic f$1:Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$tiXDbuKN6VpLu_LpIYLaGBekDJU;->f$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$tiXDbuKN6VpLu_LpIYLaGBekDJU;->f$1:Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$tiXDbuKN6VpLu_LpIYLaGBekDJU;->f$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$tiXDbuKN6VpLu_LpIYLaGBekDJU;->f$1:Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;

    invoke-virtual {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->lambda$fanoutAidlCallback$4$RadioModule(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    return-void
.end method
