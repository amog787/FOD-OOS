.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutUser$9L9586f0tFIMO5kym3kYgtd-s-4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutUser;

.field public final synthetic f$1:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$2:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$9L9586f0tFIMO5kym3kYgtd-s-4;->f$0:Lcom/android/server/pm/ShortcutUser;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$9L9586f0tFIMO5kym3kYgtd-s-4;->f$1:Lcom/android/server/pm/ShortcutService;

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$9L9586f0tFIMO5kym3kYgtd-s-4;->f$2:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$9L9586f0tFIMO5kym3kYgtd-s-4;->f$0:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$9L9586f0tFIMO5kym3kYgtd-s-4;->f$1:Lcom/android/server/pm/ShortcutService;

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$9L9586f0tFIMO5kym3kYgtd-s-4;->f$2:[I

    check-cast p1, Lcom/android/server/pm/ShortcutLauncher;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/pm/ShortcutUser;->lambda$mergeRestoredFile$5$ShortcutUser(Lcom/android/server/pm/ShortcutService;[ILcom/android/server/pm/ShortcutLauncher;)V

    return-void
.end method
