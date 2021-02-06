.class public final synthetic Lcom/android/server/-$$Lambda$UiModeManagerService$11$hX6U5hjZADuyktvQMUj2cydVQns;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$UiModeManagerService$11$hX6U5hjZADuyktvQMUj2cydVQns;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$UiModeManagerService$11$hX6U5hjZADuyktvQMUj2cydVQns;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/android/server/UiModeManagerService$11;->lambda$disableCarModeByCallingPackage$0(Ljava/lang/String;Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
