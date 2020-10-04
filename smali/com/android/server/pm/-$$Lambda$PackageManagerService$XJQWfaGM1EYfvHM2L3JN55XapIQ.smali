.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$XJQWfaGM1EYfvHM2L3JN55XapIQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$XJQWfaGM1EYfvHM2L3JN55XapIQ;->f$0:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$XJQWfaGM1EYfvHM2L3JN55XapIQ;->f$0:Lcom/android/server/pm/PackageManagerService;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$XJQWfaGM1EYfvHM2L3JN55XapIQ(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
