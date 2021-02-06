.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$C0yXUUdkpfa84Nq_Po6ovVJWCBk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/os/UserHandle;

.field public final synthetic f$5:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;ILjava/util/List;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$C0yXUUdkpfa84Nq_Po6ovVJWCBk;->f$0:Lcom/android/server/pm/ShortcutService;

    iput p2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$C0yXUUdkpfa84Nq_Po6ovVJWCBk;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$C0yXUUdkpfa84Nq_Po6ovVJWCBk;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$C0yXUUdkpfa84Nq_Po6ovVJWCBk;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$C0yXUUdkpfa84Nq_Po6ovVJWCBk;->f$4:Landroid/os/UserHandle;

    iput-object p6, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$C0yXUUdkpfa84Nq_Po6ovVJWCBk;->f$5:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$C0yXUUdkpfa84Nq_Po6ovVJWCBk;->f$0:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$C0yXUUdkpfa84Nq_Po6ovVJWCBk;->f$1:I

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$C0yXUUdkpfa84Nq_Po6ovVJWCBk;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$C0yXUUdkpfa84Nq_Po6ovVJWCBk;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$C0yXUUdkpfa84Nq_Po6ovVJWCBk;->f$4:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$C0yXUUdkpfa84Nq_Po6ovVJWCBk;->f$5:Ljava/util/List;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ShortcutService;->lambda$notifyShortcutChangeCallbacks$2$ShortcutService(ILjava/util/List;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    return-void
.end method
