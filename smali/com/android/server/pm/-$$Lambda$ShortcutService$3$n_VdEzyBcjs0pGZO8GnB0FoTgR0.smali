.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$3$n_VdEzyBcjs0pGZO8GnB0FoTgR0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService$3;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService$3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$3$n_VdEzyBcjs0pGZO8GnB0FoTgR0;->f$0:Lcom/android/server/pm/ShortcutService$3;

    iput p2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$3$n_VdEzyBcjs0pGZO8GnB0FoTgR0;->f$1:I

    iput p3, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$3$n_VdEzyBcjs0pGZO8GnB0FoTgR0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$3$n_VdEzyBcjs0pGZO8GnB0FoTgR0;->f$0:Lcom/android/server/pm/ShortcutService$3;

    iget v1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$3$n_VdEzyBcjs0pGZO8GnB0FoTgR0;->f$1:I

    iget v2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$3$n_VdEzyBcjs0pGZO8GnB0FoTgR0;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService$3;->lambda$onUidStateChanged$0$ShortcutService$3(II)V

    return-void
.end method
