.class public final synthetic Lcom/android/server/wm/-$$Lambda$Dimmer$DimState$QYvwJex5H10MFMe0LEzEUs1b2G0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/Dimmer$DimState;

.field private final synthetic f$1:Lcom/android/server/wm/Dimmer$DimAnimatable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Dimmer$DimState;Lcom/android/server/wm/Dimmer$DimAnimatable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$Dimmer$DimState$QYvwJex5H10MFMe0LEzEUs1b2G0;->f$0:Lcom/android/server/wm/Dimmer$DimState;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$Dimmer$DimState$QYvwJex5H10MFMe0LEzEUs1b2G0;->f$1:Lcom/android/server/wm/Dimmer$DimAnimatable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$Dimmer$DimState$QYvwJex5H10MFMe0LEzEUs1b2G0;->f$0:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$Dimmer$DimState$QYvwJex5H10MFMe0LEzEUs1b2G0;->f$1:Lcom/android/server/wm/Dimmer$DimAnimatable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Dimmer$DimState;->lambda$new$0$Dimmer$DimState(Lcom/android/server/wm/Dimmer$DimAnimatable;)V

    return-void
.end method
