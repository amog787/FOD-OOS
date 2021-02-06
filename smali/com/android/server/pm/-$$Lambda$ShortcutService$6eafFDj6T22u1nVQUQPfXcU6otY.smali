.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$6eafFDj6T22u1nVQUQPfXcU6otY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$6eafFDj6T22u1nVQUQPfXcU6otY;->f$0:Lcom/android/server/pm/ShortcutService;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$6eafFDj6T22u1nVQUQPfXcU6otY;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$6eafFDj6T22u1nVQUQPfXcU6otY;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$6eafFDj6T22u1nVQUQPfXcU6otY;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$6eafFDj6T22u1nVQUQPfXcU6otY;->f$0:Lcom/android/server/pm/ShortcutService;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$6eafFDj6T22u1nVQUQPfXcU6otY;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$6eafFDj6T22u1nVQUQPfXcU6otY;->f$2:I

    iget-boolean v3, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$6eafFDj6T22u1nVQUQPfXcU6otY;->f$3:Z

    check-cast p1, Lcom/android/server/pm/ShortcutUser;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/pm/ShortcutService;->lambda$cleanUpPackageForAllLoadedUsers$7$ShortcutService(Ljava/lang/String;IZLcom/android/server/pm/ShortcutUser;)V

    return-void
.end method
