.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityManagerConstants$PMWuxGp7r583rXDgas6HMH5Lce8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerConstants;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerConstants$PMWuxGp7r583rXDgas6HMH5Lce8;->f$0:Lcom/android/server/am/ActivityManagerConstants;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerConstants$PMWuxGp7r583rXDgas6HMH5Lce8;->f$0:Lcom/android/server/am/ActivityManagerConstants;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerConstants;->lambda$updateImperceptibleKillExemptions$0$ActivityManagerConstants(Ljava/lang/String;)V

    return-void
.end method
