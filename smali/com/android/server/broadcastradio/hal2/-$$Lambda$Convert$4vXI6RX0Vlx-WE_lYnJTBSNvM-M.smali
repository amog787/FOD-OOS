.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$4vXI6RX0Vlx-WE_lYnJTBSNvM-M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/hardware/broadcastradio/V2_0/ProgramFilter;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$4vXI6RX0Vlx-WE_lYnJTBSNvM-M;->f$0:Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$4vXI6RX0Vlx-WE_lYnJTBSNvM-M;->f$0:Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    check-cast p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/hal2/Convert;->lambda$programFilterToHal$4(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;Landroid/hardware/radio/ProgramSelector$Identifier;)V

    return-void
.end method
