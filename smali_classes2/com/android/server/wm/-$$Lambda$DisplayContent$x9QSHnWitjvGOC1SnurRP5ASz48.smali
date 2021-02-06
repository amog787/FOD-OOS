.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$x9QSHnWitjvGOC1SnurRP5ASz48;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$1:Landroid/util/SparseBooleanArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/util/SparseBooleanArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$x9QSHnWitjvGOC1SnurRP5ASz48;->f$0:Lcom/android/server/wm/DisplayContent;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$x9QSHnWitjvGOC1SnurRP5ASz48;->f$1:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$x9QSHnWitjvGOC1SnurRP5ASz48;->f$0:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$x9QSHnWitjvGOC1SnurRP5ASz48;->f$1:Landroid/util/SparseBooleanArray;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DisplayContent;->lambda$shouldWaitForSystemDecorWindowsOnBoot$19$DisplayContent(Landroid/util/SparseBooleanArray;Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
