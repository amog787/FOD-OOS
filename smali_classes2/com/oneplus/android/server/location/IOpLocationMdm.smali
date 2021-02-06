.class public interface abstract Lcom/oneplus/android/server/location/IOpLocationMdm;
.super Ljava/lang/Object;
.source "IOpLocationMdm.java"


# virtual methods
.method public abstract getInstance(Landroid/content/Context;)V
.end method

.method public abstract getProviderFlag()I
.end method

.method public abstract mdmAbortReport()V
.end method

.method public abstract mdmCacheClear()V
.end method

.method public abstract mdmGetLocSwitchData()Z
.end method

.method public abstract mdmLocationModeListener()Ljava/lang/String;
.end method

.method public abstract mdmPrReport()V
.end method

.method public abstract mdmReportLocSwitchData()V
.end method

.method public abstract mdmReportOtherData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract mdmReportProviderData(I)Z
.end method

.method public abstract mdmRequestTimeCount(Ljava/lang/String;J)V
.end method

.method public abstract mdmSaveOnLocationChanged(Ljava/lang/String;J)Z
.end method

.method public abstract mdmSaveRequestInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract mdmSetLossLevel(J)V
.end method

.method public abstract mdmTtffReport(II)V
.end method

.method public abstract setFusedProvider()V
.end method

.method public abstract setGnssProvider()V
.end method

.method public abstract setNetworkProvider()V
.end method

.method public abstract setPassiveProvider()V
.end method
