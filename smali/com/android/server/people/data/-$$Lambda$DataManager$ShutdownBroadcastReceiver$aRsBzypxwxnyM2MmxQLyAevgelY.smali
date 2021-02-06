.class public final synthetic Lcom/android/server/people/data/-$$Lambda$DataManager$ShutdownBroadcastReceiver$aRsBzypxwxnyM2MmxQLyAevgelY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ShutdownBroadcastReceiver$aRsBzypxwxnyM2MmxQLyAevgelY;->f$0:Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$ShutdownBroadcastReceiver$aRsBzypxwxnyM2MmxQLyAevgelY;->f$0:Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;

    check-cast p1, Lcom/android/server/people/data/UserData;

    invoke-virtual {v0, p1}, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;->lambda$onReceive$0$DataManager$ShutdownBroadcastReceiver(Lcom/android/server/people/data/UserData;)V

    return-void
.end method
