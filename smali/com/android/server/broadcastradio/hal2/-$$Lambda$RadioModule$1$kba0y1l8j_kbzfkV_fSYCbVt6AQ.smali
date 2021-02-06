.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$kba0y1l8j_kbzfkV_fSYCbVt6AQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$kba0y1l8j_kbzfkV_fSYCbVt6AQ;->f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$kba0y1l8j_kbzfkV_fSYCbVt6AQ;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$kba0y1l8j_kbzfkV_fSYCbVt6AQ;->f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$kba0y1l8j_kbzfkV_fSYCbVt6AQ;->f$1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->lambda$onParametersUpdated$8$RadioModule$1(Ljava/util/ArrayList;)V

    return-void
.end method
