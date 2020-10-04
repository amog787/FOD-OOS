.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$qVWy9L5lVOu1LVVYEh7TytYQ5vc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;


# direct methods
.method public synthetic constructor <init>(ILandroid/hardware/broadcastradio/V2_0/ProgramSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$qVWy9L5lVOu1LVVYEh7TytYQ5vc;->f$0:I

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$qVWy9L5lVOu1LVVYEh7TytYQ5vc;->f$1:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    return-void
.end method


# virtual methods
.method public final run(Landroid/hardware/radio/ITunerCallback;)V
    .locals 2

    iget v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$qVWy9L5lVOu1LVVYEh7TytYQ5vc;->f$0:I

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$qVWy9L5lVOu1LVVYEh7TytYQ5vc;->f$1:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-static {v0, v1, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->lambda$onTuneFailed$0(ILandroid/hardware/broadcastradio/V2_0/ProgramSelector;Landroid/hardware/radio/ITunerCallback;)V

    return-void
.end method
