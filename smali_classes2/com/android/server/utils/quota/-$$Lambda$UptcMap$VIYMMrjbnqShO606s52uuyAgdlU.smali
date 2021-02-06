.class public final synthetic Lcom/android/server/utils/quota/-$$Lambda$UptcMap$VIYMMrjbnqShO606s52uuyAgdlU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/quota/-$$Lambda$UptcMap$VIYMMrjbnqShO606s52uuyAgdlU;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/quota/-$$Lambda$UptcMap$VIYMMrjbnqShO606s52uuyAgdlU;->f$0:Ljava/util/function/Consumer;

    check-cast p1, Landroid/util/ArrayMap;

    invoke-static {v0, p1}, Lcom/android/server/utils/quota/UptcMap;->lambda$forEach$0(Ljava/util/function/Consumer;Landroid/util/ArrayMap;)V

    return-void
.end method
