.class public final synthetic Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$UOn4sUy4zBQuofxUbY8RBYhkNSE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstantAppRegistry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstantAppRegistry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$UOn4sUy4zBQuofxUbY8RBYhkNSE;->f$0:Lcom/android/server/pm/InstantAppRegistry;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$UOn4sUy4zBQuofxUbY8RBYhkNSE;->f$0:Lcom/android/server/pm/InstantAppRegistry;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->lambda$pruneInstantApps$2$InstantAppRegistry(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
