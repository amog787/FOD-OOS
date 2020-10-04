.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$WfmM4W7QS3OnfFwUksITHnpM74g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;


# instance fields
.field private final synthetic f$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$WfmM4W7QS3OnfFwUksITHnpM74g;->f$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    iput p2, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$WfmM4W7QS3OnfFwUksITHnpM74g;->f$1:I

    return-void
.end method


# virtual methods
.method public final exec()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$WfmM4W7QS3OnfFwUksITHnpM74g;->f$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    iget v1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$WfmM4W7QS3OnfFwUksITHnpM74g;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->lambda$getImage$4$RadioModule(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
