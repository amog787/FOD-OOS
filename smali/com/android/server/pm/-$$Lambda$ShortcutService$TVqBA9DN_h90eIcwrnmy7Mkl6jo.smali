.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$TVqBA9DN_h90eIcwrnmy7Mkl6jo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$TVqBA9DN_h90eIcwrnmy7Mkl6jo;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$TVqBA9DN_h90eIcwrnmy7Mkl6jo;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$TVqBA9DN_h90eIcwrnmy7Mkl6jo;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$TVqBA9DN_h90eIcwrnmy7Mkl6jo;->f$1:I

    check-cast p1, Lcom/android/server/pm/ShortcutLauncher;

    invoke-static {v0, v1, p1}, Lcom/android/server/pm/ShortcutService;->lambda$cleanUpPackageLocked$4(Ljava/lang/String;ILcom/android/server/pm/ShortcutLauncher;)V

    return-void
.end method
