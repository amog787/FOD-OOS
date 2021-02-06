.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$A5EcwDaVFNoKb_4sV0_1Yu9f7d4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$A5EcwDaVFNoKb_4sV0_1Yu9f7d4;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$A5EcwDaVFNoKb_4sV0_1Yu9f7d4;->f$0:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
