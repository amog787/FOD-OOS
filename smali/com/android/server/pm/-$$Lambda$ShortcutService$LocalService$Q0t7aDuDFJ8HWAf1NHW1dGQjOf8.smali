.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/ShortcutService$LocalService;

.field private final synthetic f$1:I

.field private final synthetic f$10:I

.field private final synthetic f$11:I

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Ljava/util/List;

.field private final synthetic f$4:J

.field private final synthetic f$5:Landroid/content/ComponentName;

.field private final synthetic f$6:I

.field private final synthetic f$7:I

.field private final synthetic f$8:Ljava/util/ArrayList;

.field private final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService$LocalService;ILjava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;->f$0:Lcom/android/server/pm/ShortcutService$LocalService;

    iput p2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;->f$3:Ljava/util/List;

    iput-wide p5, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;->f$4:J

    iput-object p7, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;->f$5:Landroid/content/ComponentName;

    iput p8, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;->f$6:I

    iput p9, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;->f$7:I

    iput-object p10, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;->f$8:Ljava/util/ArrayList;

    iput p11, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;->f$9:I

    iput p12, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;->f$10:I

    iput p13, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;->f$11:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 14

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;->f$0:Lcom/android/server/pm/ShortcutService$LocalService;

    iget v1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;->f$1:I

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;->f$3:Ljava/util/List;

    iget-wide v4, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;->f$4:J

    iget-object v6, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;->f$5:Landroid/content/ComponentName;

    iget v7, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;->f$6:I

    iget v8, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;->f$7:I

    iget-object v9, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;->f$8:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;->f$9:I

    iget v11, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;->f$10:I

    iget v12, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;->f$11:I

    move-object v13, p1

    check-cast v13, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/pm/ShortcutService$LocalService;->lambda$getShortcuts$0$ShortcutService$LocalService(ILjava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;IIILcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method
