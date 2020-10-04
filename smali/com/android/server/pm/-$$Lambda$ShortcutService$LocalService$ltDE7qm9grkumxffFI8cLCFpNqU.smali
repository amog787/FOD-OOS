.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$ltDE7qm9grkumxffFI8cLCFpNqU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:J

.field private final synthetic f$1:Landroid/util/ArraySet;

.field private final synthetic f$2:Landroid/content/ComponentName;

.field private final synthetic f$3:Z

.field private final synthetic f$4:Z

.field private final synthetic f$5:Z

.field private final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(JLandroid/util/ArraySet;Landroid/content/ComponentName;ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$ltDE7qm9grkumxffFI8cLCFpNqU;->f$0:J

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$ltDE7qm9grkumxffFI8cLCFpNqU;->f$1:Landroid/util/ArraySet;

    iput-object p4, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$ltDE7qm9grkumxffFI8cLCFpNqU;->f$2:Landroid/content/ComponentName;

    iput-boolean p5, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$ltDE7qm9grkumxffFI8cLCFpNqU;->f$3:Z

    iput-boolean p6, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$ltDE7qm9grkumxffFI8cLCFpNqU;->f$4:Z

    iput-boolean p7, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$ltDE7qm9grkumxffFI8cLCFpNqU;->f$5:Z

    iput-boolean p8, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$ltDE7qm9grkumxffFI8cLCFpNqU;->f$6:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 9

    iget-wide v0, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$ltDE7qm9grkumxffFI8cLCFpNqU;->f$0:J

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$ltDE7qm9grkumxffFI8cLCFpNqU;->f$1:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$ltDE7qm9grkumxffFI8cLCFpNqU;->f$2:Landroid/content/ComponentName;

    iget-boolean v4, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$ltDE7qm9grkumxffFI8cLCFpNqU;->f$3:Z

    iget-boolean v5, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$ltDE7qm9grkumxffFI8cLCFpNqU;->f$4:Z

    iget-boolean v6, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$ltDE7qm9grkumxffFI8cLCFpNqU;->f$5:Z

    iget-boolean v7, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$ltDE7qm9grkumxffFI8cLCFpNqU;->f$6:Z

    move-object v8, p1

    check-cast v8, Landroid/content/pm/ShortcutInfo;

    invoke-static/range {v0 .. v8}, Lcom/android/server/pm/ShortcutService$LocalService;->lambda$getShortcutsInnerLocked$1(JLandroid/util/ArraySet;Landroid/content/ComponentName;ZZZZLandroid/content/pm/ShortcutInfo;)Z

    move-result p1

    return p1
.end method
