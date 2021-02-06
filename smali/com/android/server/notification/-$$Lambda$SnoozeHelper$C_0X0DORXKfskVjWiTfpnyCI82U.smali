.class public final synthetic Lcom/android/server/notification/-$$Lambda$SnoozeHelper$C_0X0DORXKfskVjWiTfpnyCI82U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/notification/SnoozeHelper$Inserter;


# instance fields
.field public final synthetic f$0:Lorg/xmlpull/v1/XmlSerializer;


# direct methods
.method public synthetic constructor <init>(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$C_0X0DORXKfskVjWiTfpnyCI82U;->f$0:Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public final insert(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$C_0X0DORXKfskVjWiTfpnyCI82U;->f$0:Lorg/xmlpull/v1/XmlSerializer;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/notification/SnoozeHelper;->lambda$writeXml$4(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    return-void
.end method
