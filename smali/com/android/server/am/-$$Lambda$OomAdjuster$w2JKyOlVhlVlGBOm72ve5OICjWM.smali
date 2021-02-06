.class public final synthetic Lcom/android/server/am/-$$Lambda$OomAdjuster$w2JKyOlVhlVlGBOm72ve5OICjWM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ServiceThread;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ServiceThread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$OomAdjuster$w2JKyOlVhlVlGBOm72ve5OICjWM;->f$0:Lcom/android/server/ServiceThread;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$OomAdjuster$w2JKyOlVhlVlGBOm72ve5OICjWM;->f$0:Lcom/android/server/ServiceThread;

    invoke-static {v0}, Lcom/android/server/am/OomAdjuster;->lambda$createAdjusterThread$0(Lcom/android/server/ServiceThread;)V

    return-void
.end method
