.class public final synthetic Lcom/android/server/backup/-$$Lambda$-xfpm33S8Jqv3KpU_-llxhj8ZPI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/-$$Lambda$-xfpm33S8Jqv3KpU_-llxhj8ZPI;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/-$$Lambda$-xfpm33S8Jqv3KpU_-llxhj8ZPI;->f$0:Ljava/util/Set;

    check-cast p1, Landroid/content/ComponentName;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
