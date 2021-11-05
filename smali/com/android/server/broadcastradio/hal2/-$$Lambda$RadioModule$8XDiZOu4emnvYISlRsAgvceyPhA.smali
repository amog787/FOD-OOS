.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$8XDiZOu4emnvYISlRsAgvceyPhA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getDabRegionConfigCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/broadcastradio/hal2/Mutable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/Mutable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$8XDiZOu4emnvYISlRsAgvceyPhA;->f$0:Lcom/android/server/broadcastradio/hal2/Mutable;

    return-void
.end method


# virtual methods
.method public final onValues(ILjava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$8XDiZOu4emnvYISlRsAgvceyPhA;->f$0:Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-static {v0, p1, p2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->lambda$tryLoadingModule$1(Lcom/android/server/broadcastradio/hal2/Mutable;ILjava/util/ArrayList;)V

    return-void
.end method
