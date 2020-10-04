.class public Lcom/android/server/display/BrightnessStaticBeans$DataBean;
.super Ljava/lang/Object;
.source "BrightnessStaticBeans.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessStaticBeans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private mDate:Ljava/lang/String;

.field private mDuration:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "duration"    # J

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/android/server/display/BrightnessStaticBeans$DataBean;->mDate:Ljava/lang/String;

    .line 147
    iput-wide p2, p0, Lcom/android/server/display/BrightnessStaticBeans$DataBean;->mDuration:J

    .line 148
    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/server/display/BrightnessStaticBeans$DataBean;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 162
    iget-wide v0, p0, Lcom/android/server/display/BrightnessStaticBeans$DataBean;->mDuration:J

    return-wide v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .line 158
    iput-object p1, p0, Lcom/android/server/display/BrightnessStaticBeans$DataBean;->mDate:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setDuration(J)V
    .locals 0
    .param p1, "duration"    # J

    .line 166
    iput-wide p1, p0, Lcom/android/server/display/BrightnessStaticBeans$DataBean;->mDuration:J

    .line 167
    return-void
.end method
