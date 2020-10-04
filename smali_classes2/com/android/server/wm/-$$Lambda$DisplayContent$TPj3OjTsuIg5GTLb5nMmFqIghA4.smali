.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$TPj3OjTsuIg5GTLb5nMmFqIghA4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$TPj3OjTsuIg5GTLb5nMmFqIghA4;->f$0:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$TPj3OjTsuIg5GTLb5nMmFqIghA4;->f$0:Lcom/android/server/wm/DisplayContent;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$new$6$DisplayContent(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
