.class public Lcom/android/server/midi/MidiService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "MidiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/midi/MidiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mMidiService:Lcom/android/server/midi/MidiService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 69
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 73
    new-instance v0, Lcom/android/server/midi/MidiService;

    invoke-virtual {p0}, Lcom/android/server/midi/MidiService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/midi/MidiService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/midi/MidiService$Lifecycle;->mMidiService:Lcom/android/server/midi/MidiService;

    .line 74
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Lifecycle;->mMidiService:Lcom/android/server/midi/MidiService;

    const-string/jumbo v1, "midi"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/midi/MidiService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 75
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 79
    if-nez p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Lifecycle;->mMidiService:Lcom/android/server/midi/MidiService;

    invoke-static {v0}, Lcom/android/server/midi/MidiService;->access$000(Lcom/android/server/midi/MidiService;)V

    .line 82
    :cond_0
    return-void
.end method
