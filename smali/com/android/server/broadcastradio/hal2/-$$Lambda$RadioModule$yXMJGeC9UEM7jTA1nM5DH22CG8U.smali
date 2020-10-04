.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$yXMJGeC9UEM7jTA1nM5DH22CG8U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$registerAnnouncementListenerCallback;


# instance fields
.field private final synthetic f$0:Landroid/util/MutableInt;

.field private final synthetic f$1:Lcom/android/server/broadcastradio/hal2/Mutable;


# direct methods
.method public synthetic constructor <init>(Landroid/util/MutableInt;Lcom/android/server/broadcastradio/hal2/Mutable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$yXMJGeC9UEM7jTA1nM5DH22CG8U;->f$0:Landroid/util/MutableInt;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$yXMJGeC9UEM7jTA1nM5DH22CG8U;->f$1:Lcom/android/server/broadcastradio/hal2/Mutable;

    return-void
.end method


# virtual methods
.method public final onValues(ILandroid/hardware/broadcastradio/V2_0/ICloseHandle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$yXMJGeC9UEM7jTA1nM5DH22CG8U;->f$0:Landroid/util/MutableInt;

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$yXMJGeC9UEM7jTA1nM5DH22CG8U;->f$1:Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->lambda$addAnnouncementListener$3(Landroid/util/MutableInt;Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/ICloseHandle;)V

    return-void
.end method
