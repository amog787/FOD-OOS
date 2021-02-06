.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$oUY5YASjXdzm7j6NkozI56hILxU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

.field public final synthetic f$1:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Landroid/hardware/broadcastradio/V2_0/ProgramSelector;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$oUY5YASjXdzm7j6NkozI56hILxU;->f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$oUY5YASjXdzm7j6NkozI56hILxU;->f$1:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    iput p3, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$oUY5YASjXdzm7j6NkozI56hILxU;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$oUY5YASjXdzm7j6NkozI56hILxU;->f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$oUY5YASjXdzm7j6NkozI56hILxU;->f$1:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    iget v2, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$oUY5YASjXdzm7j6NkozI56hILxU;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->lambda$onTuneFailed$1$RadioModule$1(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;I)V

    return-void
.end method
