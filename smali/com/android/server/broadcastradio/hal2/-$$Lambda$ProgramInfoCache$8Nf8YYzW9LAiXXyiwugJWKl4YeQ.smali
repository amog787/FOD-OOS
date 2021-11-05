.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$ProgramInfoCache$8Nf8YYzW9LAiXXyiwugJWKl4YeQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$ProgramInfoCache$8Nf8YYzW9LAiXXyiwugJWKl4YeQ;->f$0:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$ProgramInfoCache$8Nf8YYzW9LAiXXyiwugJWKl4YeQ;->f$0:Ljava/lang/StringBuilder;

    check-cast p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    check-cast p2, Landroid/hardware/radio/RadioManager$ProgramInfo;

    invoke-static {v0, p1, p2}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->lambda$toString$0(Ljava/lang/StringBuilder;Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method
